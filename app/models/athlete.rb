# == Schema Information
#
# Table name: athletes
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  first_name             :string
#  last_name              :string
#  year                   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_athletes_on_email                 (email) UNIQUE
#  index_athletes_on_reset_password_token  (reset_password_token) UNIQUE
#

class Athlete < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
has_many :goal_times, :foreign_key => "athletes_id", :dependent => :destroy
has_many :actual_times, :foreign_key => "athletes_id", :dependent => :destroy

has_many :meets, :through => :actual_times, :source => :meets
         
end
