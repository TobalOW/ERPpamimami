# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string
#  price       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#  user_id     :integer
#
# Indexes
#
#  index_products_on_category_id  (category_id)
#  index_products_on_user_id      (user_id)
#

class Product < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :order_details
  validates :name, :price, :category_id, :user_id, presence: true
end
