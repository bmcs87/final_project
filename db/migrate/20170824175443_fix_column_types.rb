class FixColumnTypes < ActiveRecord::Migration[5.1]
  def change
    remove_column :goal_times, :meet
    remove_column :actual_times, :meet
    remove_column :meets, :goal_times_id
    remove_column :meets, :users_id
    
    add_column :actual_times, :meet_id, :integer
    add_column :goal_times, :meet_id, :integer
    add_column :meets, :user_id, :integer
  end
end
