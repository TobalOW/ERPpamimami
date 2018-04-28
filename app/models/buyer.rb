# == Schema Information
#
# Table name: buyers
#
#  id         :integer          not null, primary key
#  name       :string
#  rut        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Buyer < ApplicationRecord
  has_many :orders
  validates :name, :rut, presence: true
end
