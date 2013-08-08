class Skill < ActiveRecord::Base
  has_many :users_skills
  has_many :users, through: :users_skills
  
  validates :name, uniqueness: true

  def user_with_proficiency(rating)
    self.users_skills.find_by_proficiency(rating).user
  end
end
