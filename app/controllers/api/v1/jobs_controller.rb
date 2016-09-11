class Api::V1::JobsController < ApplicationController
  def index
    @jobs = Job.all
    # @user = Current_user
    @job = Job.find_by(id: params[:job_id])
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
