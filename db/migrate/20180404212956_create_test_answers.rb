class CreateTestAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :test_answers do |t|
      t.integer :test_id
      t.integer :question_id
      t.text :answer

      t.timestamps
    end
    add_foreign_key :test_answers, :tests
  end
end
