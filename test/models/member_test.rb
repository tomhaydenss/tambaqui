# == Schema Information
#
# Table name: members
#
#  id          :integer          not null, primary key
#  code        :string(255)
#  name        :string(255)
#  birthdate   :date
#  status      :string(255)
#  locality_id :integer
#  group_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class MemberTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
