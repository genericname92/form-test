# == Schema Information
#
# Table name: test_answers
#
#  id               :integer          not null, primary key
#  answer           :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  test_question_id :integer
#

class TestAnswer < ApplicationRecord
  belongs_to :test_question
end
