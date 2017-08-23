
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :goal_times, :foreign_key => "users_id", :dependent => :destroy
  has_many :meets, :foreign_key => "users_id", :dependent => :destroy
  
  validates :username, :presence => true, :uniqueness => true 
         
end
