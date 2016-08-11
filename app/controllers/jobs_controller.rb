class JobsController < ApplicationController
  def index
    @jobs = Job.all
    render 'index.html.erb'
  end

  def new
    @job = Job.new
    render 'new.html.erb'
  end

  def create
    @job = Job.new(
      name:

    )

end
