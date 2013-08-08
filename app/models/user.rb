class User < ActiveRecord::Base
  has_many :skills, through :users_skills

  def proficiency_for(skill)
    self.skill.proficiency
  end

  def set_proficiency_for(skill, value)
    self.proficiency_for(skill) = value
    self.save
  end
end
