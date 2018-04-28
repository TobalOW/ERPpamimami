class CreateOrderDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :order_details do |t|
      t.references :order, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :price
      t.integer :quantity
      t.integer :total

      t.timestamps
    end
  end
end
