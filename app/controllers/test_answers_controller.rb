class TestAnswersController < ApplicationController
  def create
    @test_answer = TestAnswer.create!(test_answer_params)
    head :no_content
  end

  private
  def test_answer_params
    params.permit(:test_question_id, :answer)
  end
end
