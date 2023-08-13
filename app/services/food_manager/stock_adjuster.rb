# frozen_string_literal: true

module FoodManager
  class StockAdjuster < ApplicationService
    def initialize(food, quantity)
      @food = food
      @quantity = quantity
    end

    def call
      @food.update(stock_quantity: @food.stock_quantity - @quantity)
    end
  end
end
