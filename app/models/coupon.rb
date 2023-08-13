# frozen_string_literal: true

# == Schema Information
# table name: coupons
# t.belongs_to :food, null: false, foreign_key: true
# t.integer :status, default: 0
# t.string :token, index: true
# t.integer :offer_amount
# t.datetime :expires_at
class Coupon < ApplicationRecord
  validates_presence_of :food_id, :status, :token, :offer_amount, :expires_at
  enum :status, {
    active: 0,
    disabled: 1
  }, prefix: true

  belongs_to :food
  has_many :orders, dependent: :delete_all

  def valid?
    status_active? && expires_at < Time.now
  end
end
