class CreateDeposits < ActiveRecord::Migration[5.1]
  def change
    create_table :deposits do |t|
      t.references :buyer, foreign_key: true
      t.integer :total
      t.string :method

      t.timestamps
    end
  end
end
