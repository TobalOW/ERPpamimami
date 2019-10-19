# == Schema Information
#
# Table name: deposits
#
#  id         :bigint(8)        not null, primary key
#  comment    :text
#  method     :string
#  total      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  buyer_id   :bigint(8)
#
# Indexes
#
#  index_deposits_on_buyer_id  (buyer_id)
#
# Foreign Keys
#
#  fk_rails_...  (buyer_id => buyers.id)
#

require 'test_helper'

class DepositTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
