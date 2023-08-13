# frozen_string_literal: true

module CouponManager
  class OfferPercentCalculator < ApplicationService
    def initialize(food, amount)
      @food = food
      @amount = amount
    end

    def call
      ((@amount * 100) / @food.price).to_i
    end
  end
end
