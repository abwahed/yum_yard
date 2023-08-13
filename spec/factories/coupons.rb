# frozen_string_literal: true

FactoryBot.define do
  factory :coupon do
    food
    status { 1 }
    token { 'MyString' }
    offer_amount { 1 }
    expires_at { '2023-08-12 14:38:58' }
  end
end
