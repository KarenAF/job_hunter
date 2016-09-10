class Api::V1::JobsController < ApplicationController
  def index
    @jobs = Job.all
    # @user = Current_user
    @job = Job.find_by(id: params[:job_id])
    render 'index.json.jbuilder'
  end
end
