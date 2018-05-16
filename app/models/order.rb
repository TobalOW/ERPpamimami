# == Schema Information
#
# Table name: orders
#
#  id         :integer          not null, primary key
#  address    :string
#  total      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  buyer_id   :integer
#  user_id    :integer
#
# Indexes
#
#  index_orders_on_buyer_id  (buyer_id)
#  index_orders_on_user_id   (user_id)
#

class Order < ApplicationRecord
  has_many :order_details
  has_many :deposits
  belongs_to :buyer
  belongs_to :user
  validates :address, :total, :buyer_id, :user_id, presence: true

  accepts_nested_attributes_for :order_details, :reject_if => :all_blank, :allow_destroy => true

end
