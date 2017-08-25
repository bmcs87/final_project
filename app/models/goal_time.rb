# == Schema Information
#
# Table name: goal_times
#
#  id          :integer          not null, primary key
#  time        :time
#  actual_time :time
#  users_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  meet_id     :integer
#

class GoalTime < ApplicationRecord
    
# has_many :users, :class_name => "User"
# has_many :meets, :foreign_key => "goal_times_id", :dependent => :destroy
# has_many :actual_times, :foreign_key => "goal_times_id", :dependent => :destroy

# has_many :places, :through => :meets, :source => :places

belongs_to :meet
    
end
