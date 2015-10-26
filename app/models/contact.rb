# == Schema Information
#
# Table name: contacts
#
#  id          :integer          not null, primary key
#  description :string(255)
#  type        :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Contact < ActiveRecord::Base
end
