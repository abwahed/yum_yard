# frozen_string_literal: true

FactoryBot.define do
  factory :order do
    food_id { 1 }
    quantity { 1 }
    coupon
    total_price { 1 }
  end
end
