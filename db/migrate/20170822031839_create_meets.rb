class CreateMeets < ActiveRecord::Migration[5.0]
  def change
    create_table :meets do |t|
      t.string :meet_name
      t.string :city
      t.string :state
      t.string :date
      t.integer :places_id
      t.string :athlete_notes

      t.timestamps

    end
  end
end
