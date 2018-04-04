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

class TestQuestion < ApplicationRecord
  belongs_to :question
  belongs_to :test
end
