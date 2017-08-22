class CreateActualTimes < ActiveRecord::Migration[5.0]
  def change
    create_table :actual_times do |t|
      t.time :time
      t.string :goal_achieved
      t.integer :meets_id
      t.integer :athletes_id

      t.timestamps

    end
  end
end
