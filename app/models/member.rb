# == Schema Information
#
# Table name: members
#
#  id          :integer          not null, primary key
#  code        :string(255)
#  name        :string(255)
#  birthdate   :date
#  status      :string(255)
#  locality_id :integer
#  group_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Member < ActiveRecord::Base
  belongs_to :locality
  belongs_to :group
  has_many :address_members
  has_many :addresses, through: :address_members
  has_and_belongs_to_many :parents
  has_and_belongs_to_many :contacts
end
