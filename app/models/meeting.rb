# == Schema Information
#
# Table name: meetings
#
#  id          :integer          not null, primary key
#  description :string(255)
#  date        :date
#  start_at    :time
#  end_at      :time
#  location    :string(255)
#  group_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Meeting < ActiveRecord::Base
  belongs_to :group
  has_many :attendance
end
