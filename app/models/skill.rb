class Skill < ActiveRecord::Base
  has_many :users, through :users_skills
  
  validates :name, uniqueness: true
end
