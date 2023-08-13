# frozen_string_literal: true

module OrderManager
  class TotalPriceCalculator < ApplicationService
    def initialize(offer_amount, food_price, quantity)
      @offer_amount = offer_amount
      @food_price = food_price
      @quantity = quantity
    end

    def call
      (@food_price - @offer_amount) * @quantity
    end
  end
end
