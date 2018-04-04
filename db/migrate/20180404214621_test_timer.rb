class TestTimer < ActiveRecord::Migration[5.1]
  def change
    add_column :tests, :start_time, :datetime
    add_column :tests, :end_time, :datetime
  end
end
