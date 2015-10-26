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
end
