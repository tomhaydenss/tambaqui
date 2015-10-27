# == Schema Information
#
# Table name: groups
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Group < ActiveRecord::Base
  has_many :sub_groups, class_name: "Group",
                          foreign_key: "group_id"
  belongs_to :parent_group, class_name: "Group",
                          foreign_key: "group_id"
end