class Api::V1::JobsController < ApplicationController
  def index
    @job = Job.find_by(id: params[:job_id])
    all_jobs = Skill.find_by(job_id: @job.id)
    render 'index.html.erb'
  end
end
