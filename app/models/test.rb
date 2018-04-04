# == Schema Information
#
# Table name: tests
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  start_time :datetime
#  end_time   :datetime
#

class Test < ApplicationRecord
  has_many :test_questions
  # TODO: change ordering to be based on test_questions ordering
  has_many :questions, through: :test_questions, source: :question
  belongs_to :user
  TEST_QUESTIONS = 5

  def generate_test_questions
    test_questions = []
    questions = Question.generate_question_array(TEST_QUESTIONS)
    questions.each do |q|
      test_questions.push(TestQuestion.create!(question: q, test: self))
    end
    test_questions
  end
end
