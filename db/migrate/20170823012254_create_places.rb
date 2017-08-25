class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :goal_times
      t.time :actual_times
      t.string :meet
      t.integer :goal_time_id

      t.timestamps

    end
  end
end
