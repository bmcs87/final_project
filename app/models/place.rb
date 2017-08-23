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
    
has_many :meets, :foreign_key => "places_id", :dependent => :destroy

has_many :goal_times, :through => :meets, :source => :goal_times
#has_many :actual_times, :through => :meets, :source => :actual_times
    
end
