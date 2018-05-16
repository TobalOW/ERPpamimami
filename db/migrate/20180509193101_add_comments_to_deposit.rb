class AddCommentsToDeposit < ActiveRecord::Migration[5.1]
  def change
    add_column :deposits, :comment, :text
  end
end
