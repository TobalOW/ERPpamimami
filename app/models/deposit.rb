# == Schema Information
#
# Table name: deposits
#
#  id         :integer          not null, primary key
#  comment    :text
#  method     :string
#  total      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  order_id   :integer
#
# Indexes
#
#  index_deposits_on_order_id  (order_id)
#

class Deposit < ApplicationRecord
  belongs_to :order
  validates :method, :total, :order_id, :comment, presence: true
end
