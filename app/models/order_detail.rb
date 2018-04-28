# == Schema Information
#
# Table name: order_details
#
#  id         :integer          not null, primary key
#  price      :integer
#  quantity   :integer
#  total      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  order_id   :integer
#  product_id :integer
#
# Indexes
#
#  index_order_details_on_order_id    (order_id)
#  index_order_details_on_product_id  (product_id)
#

class OrderDetail < ApplicationRecord
  belongs_to :order
  belongs_to :product

  validates :price, :quantity, :total, :product_id, presence: true
end
