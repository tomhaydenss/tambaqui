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

require 'test_helper'

class MeetingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
