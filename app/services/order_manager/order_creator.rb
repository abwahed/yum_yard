# frozen_string_literal: true

module OrderManager
  class OrderCreator < ApplicationService
    def initialize(food, quantity, total_price, coupon_id=nil)
      @food = food
      @quantity = quantity
      @total_price = total_price
      @coupon_id = coupon_id
    end

    def call
      Food.transaction do
        FoodManager::StockAdjuster.call(@food, @quantity)
        @food.orders.create!(
          quantity: @quantity,
          coupon_id: @coupon_id,
          total_price: @total_price
        )
      end
    end
  end
end
