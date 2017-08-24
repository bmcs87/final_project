# == Schema Information
#
# Table name: places
#
#  id           :integer          not null, primary key
#  goal_times   :string
#  actual_times :time
#  meet         :string
#  goal_time_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#



class Place < ApplicationRecord
    
has_many :users, :class_name => "User"

#belongs_to :meets, :foreign_key => "places_id", :dependent => :destroy
belongs_to(:meets, :class_name => "Meet", :foreign_key => "meets_id")

belongs_to(:goal_times, :class_name => "GoalTimes", :foreign_key => "goal_times_id")
#belongs_to :goal_times, :foreign_key => "actual_times_id", :dependent => :destroy

belongs_to(:actual_times, :class_name => "ActualTimes", :foreign_key => "actual_times_id")
#belongs_to :actual_times, :foreign_key => "goal_times_id", :dependent => :destroy


end
