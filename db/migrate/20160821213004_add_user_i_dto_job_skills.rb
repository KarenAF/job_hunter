class AddUserIDtoJobSkills < ActiveRecord::Migration
  def change
    add_column :job_skills, :user_id, :integer
  end
end
