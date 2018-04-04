class CreateTestQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :test_questions do |t|
      t.integer :question_id
      t.integer :test_id
      t.timestamps
    end
  end
end
