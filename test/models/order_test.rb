# == Schema Information
#
# Table name: orders
#
#  id         :bigint(8)        not null, primary key
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

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
