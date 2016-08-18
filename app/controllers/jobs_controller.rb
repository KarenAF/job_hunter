class JobsController < ApplicationController
  def index
    @jobs1 = Job.where(status: "not_yet_applied")
    @jobs2 = Job.where(status: "applying_to")
    @jobs3 = Job.where(status: "applied_to")
    @jobs4 = Job.where(status: "interview_set_up")
    @jobs5 = Job.where(status: "interviewed_with")
    render 'index.html.erb'
  end

  def new
    @job = Job.new
    render 'new.html.erb'
  end

  def show
    @job = Job.find_by(id: params['id'])
    render 'show.html.erb'
  end

  # def create
  #   @job = Job.new(
  #     user_id: current
  #   )


end
