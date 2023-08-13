class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name, index: true
      t.text :image_url
      t.integer :stock_quantity
      t.integer :price
      t.integer :category, default: 0

      t.timestamps
    end
  end
end
