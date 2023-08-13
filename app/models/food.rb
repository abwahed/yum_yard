# frozen_string_literal: true

# == Schema Information
# table name: foods
# t.string 'name'
# t.text 'image_url'
# t.integer 'stock_quantity'
# t.integer 'price'
# t.integer 'category', default: 0
class Food < ApplicationRecord
  validates_presence_of :name, :image_url, :stock_quantity, :price, :category
  validates_numericality_of :price, greater_than: 0
  validates_numericality_of :stock_quantity, greater_than: -1
  enum :category, {
    appetizer: 0,
    main_course: 1,
    dessert: 2
  }, suffix: true

  has_many :coupons, dependent: :delete_all
  has_many :orders, dependent: :delete_all

  def has_active_coupon?
    coupons.status_active.present?
  end

  def stock_available?(ordered)
    stock_quantity >= ordered
  end
end
