# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Order, type: :model do
  describe 'Validations' do
    it 'is valid with valid attributes' do
      order = create(:order)
      expect(order).to be_valid
    end

    it 'is not valid without a food_id' do
      order2 = build(:order, food_id: nil)
      expect(order2).to_not be_valid
    end

    it 'is not valid without a quantity' do
      order2 = build(:order, quantity: nil)
      expect(order2).to_not be_valid
    end

    it 'is not valid without a total_price' do
      order2 = build(:order, total_price: nil)
      expect(order2).to_not be_valid
    end

    it 'is valid without a coupon_id' do
      order2 = build(:order, coupon_id: nil)
      expect(order2).to be_valid
    end

    it 'should not have total_price less than 1' do
      order2 = build(:order, total_price: 0)
      expect(order2).to_not be_valid
    end

    it 'should not have quantity less than 1' do
      order2 = build(:order, quantity: 0)
      expect(order2).to_not be_valid
    end
  end
end
