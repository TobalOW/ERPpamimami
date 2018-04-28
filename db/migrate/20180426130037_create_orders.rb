class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :buyer, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :total
      t.string :address

      t.timestamps
    end
  end
end
