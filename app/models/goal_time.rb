# == Schema Information
#
# Table name: goal_times
#
#  id         :integer          not null, primary key
#  goal_time  :time
#  users_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class GoalTime < ApplicationRecord
    
belongs_to :users, :class_name => "User"
    
end
