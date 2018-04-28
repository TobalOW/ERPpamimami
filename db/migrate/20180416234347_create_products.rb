class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.references :category, foreign_key: true
      t.string :name
      t.references :user, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
