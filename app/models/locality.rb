# == Schema Information
#
# Table name: localities
#
#  id          :integer          not null, primary key
#  code        :string(255)
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Locality < ActiveRecord::Base
  has_many :sub_localities, class_name: "Locality",
                          foreign_key: "locality_id"
  belongs_to :parent_locality, class_name: "Locality",
                          foreign_key: "locality_id"
end
