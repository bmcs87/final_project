# == Schema Information
#
# Table name: meets
#
#  id            :integer          not null, primary key
#  meet_name     :string
#  city          :string
#  state         :string
#  date          :string
#  places_id     :integer
#  athlete_notes :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Meet < ApplicationRecord
    
has_many :actual_times, :foreign_key => "meets_id", :dependent => :destroy
belongs_to :places, :class_name => "Place"

has_many :athletes, :through => :actual_times, :source => :athletes
    
end
