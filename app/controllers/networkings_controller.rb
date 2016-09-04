class NetworkingsController < ApplicationController
  def index
    @networkings = Networking.all
  end

  def new
    @networking = Networking.new
    @connections = current_user.networkings
    render 'new.html.erb'
  end

  def create
    @networking = Networking.new(
      user_id: current_user.id,
      first_name: params['first_name'],
      last_name: params['last_name'],
      date_contacted: params['date_contacted'],
      email: params['email'],
      job_id: params['job_id'],
      emailed: params['emailed'],
      phoned: params['phoned'],
      letter_sent: params['letter_sent'],
      notes: params['notes']
    )
    @networking.save
    flash[:success] = "networking connection successfully saved"
    redirect_to '/networkings'  
  end 

  def show
    @networking = Networking.find_by(id: params[:id])
    @job = @networking.job
    render 'show.html.erb'
  end

end
