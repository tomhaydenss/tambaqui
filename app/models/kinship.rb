# == Schema Information
#
# Table name: kinships
#
#  id          :integer          not null, primary key
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Kinship < ActiveRecord::Base
end
