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

require 'test_helper'

class AttendanceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
