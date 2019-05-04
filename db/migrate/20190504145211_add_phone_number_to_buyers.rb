class AddPhoneNumberToBuyers < ActiveRecord::Migration[5.1]
  def change
    add_column :buyers, :phone, :string
  end
end
