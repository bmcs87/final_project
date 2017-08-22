# == Schema Information
#
# Table name: actual_times
#
#  id            :integer          not null, primary key
#  time          :time
#  goal_achieved :string
#  meets_id      :integer
#  athletes_id   :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class ActualTime < ApplicationRecord
    
belongs_to :athletes, :class_name => "Athlete"
belongs_to :meets, :class_name => "Meet"
    
end
