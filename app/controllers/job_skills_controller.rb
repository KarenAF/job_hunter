class JobSkillsController < ApplicationController
  def new
    render 'new.html.erb'
  end

  def create
    jobskill = JobSkill.create(
      user_id:
    )
end
