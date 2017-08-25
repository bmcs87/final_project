class CreateActualTimes < ActiveRecord::Migration[5.0]
  def change
    create_table :actual_times do |t|
      t.time :actual_times
      t.string :meet
      t.string :place
      t.integer :goal_times_id

      t.timestamps

    end
  end
end
