# == Schema Information
#
# Table name: meets
#
#  id              :integer          not null, primary key
#  meet_name       :string
#  city            :string
#  state           :string
#  date            :date
#  athlete_notes   :string
#  places_id       :integer
#  actual_times_id :integer
#  goal_times_id   :integer
#  users_id        :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Meet < ApplicationRecord
    
has_many :users
has_many :goal_times
has_many :actual_times
has_many :places
    
end
