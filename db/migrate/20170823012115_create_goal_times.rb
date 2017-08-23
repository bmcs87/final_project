class CreateGoalTimes < ActiveRecord::Migration[5.0]
  def change
    create_table :goal_times do |t|
      t.time :goal_times
      t.time :actual_time
      t.string :meet
      t.integer :users_id

      t.timestamps

    end
  end
end
