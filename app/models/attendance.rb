# == Schema Information
#
# Table name: attendances
#
#  id         :integer          not null, primary key
#  meeting_id :integer
#  member_id  :integer
#  attendee   :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Attendance < ActiveRecord::Base
  belongs_to :meeting
  belongs_to :member
end
