# == Schema Information
#
# Table name: test_questions
#
#  id          :integer          not null, primary key
#  question_id :integer
#  test_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class TestQuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
