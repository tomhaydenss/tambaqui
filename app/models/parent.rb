# == Schema Information
#
# Table name: parents
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  kinship_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Parent < ActiveRecord::Base
  belongs_to :kinship
  has_and_belongs_to_many :contacts
end
