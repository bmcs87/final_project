# == Schema Information
#
# Table name: goal_times
#
#  id          :integer          not null, primary key
#  goal_times  :time
#  actual_time :time
#  meet        :string
#  users_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class GoalTime < ApplicationRecord
    
belongs_to :users, :class_name => "User"
has_many :meets, :foreign_key => "goal_times_id", :dependent => :destroy
has_many :actual_times, :foreign_key => "goal_times_id", :dependent => :destroy

has_many :places, :through => :meets, :source => :places
    
end
