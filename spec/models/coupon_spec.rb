# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Coupon, type: :model do
  describe 'Validations' do
    it 'is valid with valid attributes' do
      coupon = create(:coupon)
      expect(coupon).to be_valid
    end

    it 'is not valid without a status' do
      coupon = build(:coupon, status: nil)
      expect(coupon).to_not be_valid
    end

    it 'is not valid without a offer_amount' do
      coupon = build(:coupon, offer_amount: nil)
      expect(coupon).to_not be_valid
    end

    it 'is not valid without a expires_at' do
      coupon = build(:coupon, expires_at: nil)
      expect(coupon).to_not be_valid
    end
  end

  describe 'Methods' do
    it 'should return true if coupon is valid' do
      food = create(:food)
      coupon = build(:coupon, food_id: food.id, status: 'active', expires_at: Time.now + 2.minutes)
      expect(coupon).to be_valid
    end

    it 'should return false if coupon is invalid' do
      food = create(:food)
      coupon = build(:coupon, food_id: food.id, status: 'disabled', expires_at: Time.now - 2.minutes)
      expect(coupon).not_to be_valid
    end
  end
end
