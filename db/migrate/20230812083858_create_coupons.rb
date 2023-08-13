class CreateCoupons < ActiveRecord::Migration[7.0]
  def change
    create_table :coupons do |t|
      t.belongs_to :food, null: false, foreign_key: true
      t.integer :status, default: 0
      t.string :token, index: true
      t.integer :offer_amount
      t.datetime :expires_at

      t.timestamps
    end
  end
end
