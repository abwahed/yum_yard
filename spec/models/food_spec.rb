# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Food, type: :model do
  describe 'Validations' do
    it 'is valid with valid attributes' do
      @food1 = create(:food)
      expect(@food1).to be_valid
    end

    it 'is not valid without a name' do
      food2 = build(:food, name: nil)
      expect(food2).to_not be_valid
    end

    it 'is not valid without a image_url' do
      food2 = build(:food, image_url: nil)
      expect(food2).to_not be_valid
    end

    it 'is not valid without a stock_quantity' do
      food2 = build(:food, stock_quantity: nil)
      expect(food2).to_not be_valid
    end

    it 'is not valid without a price' do
      food2 = build(:food, price: nil)
      expect(food2).to_not be_valid
    end

    it 'is not valid without a category' do
      food2 = build(:food, category: nil)
      expect(food2).to_not be_valid
    end

    it 'should have positive price' do
      food2 = build(:food, price: 0)
      expect(food2).to_not be_valid
    end

    it 'should not have negative stock' do
      food2 = build(:food, stock_quantity: -1)
      expect(food2).to_not be_valid
    end
  end

  describe 'Methods' do
    it 'should return true if active coupons present' do
      food2 = create(:food)
      create(:coupon, food_id: food2.id, status: 'active')
      expect(food2).to be_has_active_coupon
    end

    it 'should return false if active coupons not present' do
      food2 = create(:food)
      create(:coupon, food_id: food2.id)
      expect(food2).not_to be_has_active_coupon
    end

    it 'should return true if stock available' do
      food2 = build(:food, stock_quantity: 5)
      expect(food2).to be_stock_available(2)
    end

    it 'should return false if stock unavailable' do
      food2 = build(:food, stock_quantity: 5)
      expect(food2).not_to be_stock_available(10)
    end
  end
end
