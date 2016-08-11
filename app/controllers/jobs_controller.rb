class JobsController < ApplicationController
  def index
    @jobs = Job.all
    render 'index.html.erb'
  end
end
