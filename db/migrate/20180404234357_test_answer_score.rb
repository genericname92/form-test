class TestAnswerScore < ActiveRecord::Migration[5.1]
  def change
    add_column :test_answers, :score, :integer
  end
end
