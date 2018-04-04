class TestsController < ApplicationController
  def create
    @test = Test.new(user: current_user, start_time: Time.now, end_time: Time.now + 15.minutes)

    if (@test.save)
      @test.generate_test_questions
      redirect_to "/take_test/#{@test.id}"
    else
      redirect_to :new_test_url
    end
  end

  def take_test
    @test = Test.find(params[:id])
    @questions = @test.questions
    @test_questions = @test.test_questions
  end

  def new
    require_signed_in!
  end
end
