# == Schema Information
#
# Table name: actual_times
#
#  id            :integer          not null, primary key
#  time          :time
#  place         :string
#  goal_times_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  meet_id       :integer
#

class ActualTime < ApplicationRecord
    
# has_many :users, :class_name => "User"    
belongs_to :goal_times, :class_name => "GoalTime"


belongs_to :meet

#has_many :places, :through => :meets, :source => :places
    
end
