class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.belongs_to :food, null: false, foreign_key: true
      t.integer :quantity
      t.belongs_to :coupon, foreign_key: true
      t.integer :total_price

      t.timestamps
    end
  end
end
