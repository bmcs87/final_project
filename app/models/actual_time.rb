# == Schema Information
#
# Table name: actual_times
#
#  id            :integer          not null, primary key
#  actual_times  :time
#  meet          :string
#  place         :string
#  goal_times_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class ActualTime < ApplicationRecord
    
belongs_to :goal_times, :class_name => "GoalTime"
has_many :meets, :foreign_key => "actual_times_id", :dependent => :destroy

#has_many :places, :through => :meets, :source => :places
    
end
