class ChangeGoalTimeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :goal_times, :goal_times, :time
    rename_column :actual_times, :actual_times, :time
  end
end
