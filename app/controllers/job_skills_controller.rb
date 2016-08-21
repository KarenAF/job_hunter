class JobSkillsController < ApplicationController
  def new
    render 'new.html.erb'
  end

  def create
    @job = Job.find_by(id: params['job_id'])
    jobskill = JobSkill.create(
      user_id: current_user.id,
      skill_id: params[:skill_id],
      job_id: @job.id
    )
    redirect_to 'jobs/#{@job.id}'
  end
end
