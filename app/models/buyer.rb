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

class Buyer < ApplicationRecord
  has_many :orders
  validates :name, :rut, :phone, presence: true
end
