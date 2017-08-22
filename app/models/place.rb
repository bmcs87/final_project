# == Schema Information
#
# Table name: places
#
#  id         :integer          not null, primary key
#  rank       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Place < ApplicationRecord
    
has_many :meets, :foreign_key => "places_id", :dependent => :destroy
    
end
