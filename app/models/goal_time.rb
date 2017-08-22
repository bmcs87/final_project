# == Schema Information
#
# Table name: goal_times
#
#  id          :integer          not null, primary key
#  goal_time   :time
#  athletes_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class GoalTime < ApplicationRecord
    
belongs_to :athletes, :class_name => "Athlete"
    
end
