class JobSkill < ActiveRecord::Base
  belongs_to :skill 
  belongs_to :job

end
