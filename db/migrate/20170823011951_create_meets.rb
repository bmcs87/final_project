class CreateMeets < ActiveRecord::Migration[5.0]
  def change
    create_table :meets do |t|
      t.string :meet_name
      t.string :city
      t.string :state
      t.date :date
      t.string :athlete_notes
      t.integer :places_id
      t.integer :actual_times_id
      t.integer :goal_times_id
      t.integer :users_id

      t.timestamps

    end
  end
end
