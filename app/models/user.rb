class User < ActiveRecord::Base
  has_many :users_skills
  has_many :skills, through: :users_skills

  def proficiency_for(skill)
    self.users_skills.find_by_skill_id(skill.id).proficiency
  end

  def set_proficiency_for(skill, rating)
    skill = self.users_skills.find_by_skill_id(skill.id)
    skill.proficiency = rating
    skill.save
  end

end
