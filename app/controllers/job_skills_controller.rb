class JobSkillsController < ApplicationController
  def new
    @job = Job.find_by(id: params['job_id'])
    @skills = Skill.all
    @skills_for_this_job = @job.skills.sort
    render 'new.html.erb'
  end

  def create
    @job = Job.find_by(id: params['job_id'])
    jobskill = JobSkill.create(
      user_id: current_user.id,
      skill_id: params[:skill_id],
      job_id: params['job_id']
    )
    redirect_to "/jobs/#{@job.id}"
  end
end
