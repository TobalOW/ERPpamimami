# == Schema Information
#
# Table name: buyers
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  phone      :string
#  rut        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class BuyerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
