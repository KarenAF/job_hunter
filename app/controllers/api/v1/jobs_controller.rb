class Api::V1::JobsController < ApplicationController
  def index
    @jobs = Job.all
    # @user = Current_user
    # @job = Job.find_by(id: params[:job_id])
    @jobs1 = Job.where(status: "not_yet_applied")
    @jobs2 = Job.where(status: "applying_to")
    @jobs3 = Job.where(status: "applied_to")
    @jobs4 = Job.where(status: "interview_set_up")
    @jobs5 = Job.where(status: "interviewed_with")
    @jobs6 = Job.where(status: "job_offered")
    render 'index.json.jbuilder'
  end

  def create
    @job = Job.new(
      company: params[:company],
      position: params[:position],
      source: params[:source],
      status: params[:status],
    )
    @job.save
    @jobs = Job.all
    render 'index.json.jbuilder'
  end


end
