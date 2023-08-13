# frozen_string_literal: true

FactoryBot.define do
  factory :food do
    name { 'MyString' }
    image_url { 'MyText' }
    stock_quantity { 1 }
    price { 1 }
    category { 1 }
  end
end
