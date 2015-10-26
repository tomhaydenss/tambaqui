# == Schema Information
#
# Table name: address_members
#
#  id                     :integer          not null, primary key
#  description            :string(50)
#  street_number          :string(10)
#  additional_information :string(255)
#  address_id             :integer
#  member_id              :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class AddressMember < ActiveRecord::Base
  belongs_to :address
  belongs_to :member
end
