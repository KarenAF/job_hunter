class NetworkingsController < ApplicationController
  def index
    @networkings = Networking.all.sort
  end

  def new
    @networking = Networking.new
    @connections = current_user.networkings.order(:first_name)
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
    if @networking.job
      @company = @networking.job
    else
      @company = "none"
    end
    render 'show.html.erb'
  end

  def edit 
    @networking = Networking.find_by(id: params[:id])
    render 'edit.html.erb'
  end

  def update
    @networking = Networking.find_by(id: params[:id])    
    @networking.update(
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
    flash[:success] = "networking connection successfully updated"
    redirect_to "/networkings/#{@networking.id}"     
  end
end
