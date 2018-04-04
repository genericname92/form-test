class BetterTestAnswerLink < ActiveRecord::Migration[5.1]
  def change
    remove_foreign_key :test_answers, :tests
    remove_column :test_answers, :test_id
    remove_column :test_answers, :question_id
    add_column :test_answers, :test_question_id, :integer
  end
end
