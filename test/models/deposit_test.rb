# == Schema Information
#
# Table name: deposits
#
#  id         :integer          not null, primary key
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

require 'test_helper'

class DepositTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
