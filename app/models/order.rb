# frozen_string_literal: true

# == Schema Information
# table name: orders
# t.belongs_to :food, null: false, foreign_key: true
# t.integer :quantity
# t.belongs_to :coupon, foreign_key: true
# t.integer :total_price
class Order < ApplicationRecord
  validates_presence_of :quantity, :total_price
  validates_numericality_of :quantity, greater_than: 0
  validates_numericality_of :total_price, greater_than: 0

  belongs_to :food
  belongs_to :coupon, optional: true
end
