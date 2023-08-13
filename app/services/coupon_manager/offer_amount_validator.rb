# frozen_string_literal: true

module CouponManager
  class OfferAmountValidator < ApplicationService
    def initialize(food, amount)
      @food = food
      @amount = amount
    end

    def call
      offer_percentage = CouponManager::OfferPercentCalculator.call(@food, @amount)
      offer_percentage >= 10 && offer_percentage <= 50
    end
  end
end
