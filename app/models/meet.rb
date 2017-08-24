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
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :integer
#


class Meet < ApplicationRecord
    
# has_many :actual_times
# has_many :places

belongs_to :user
has_one :goal_time
has_one :place
has_many :actual_times
    
end
