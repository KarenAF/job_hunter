class NetworkingsController < ApplicationController
  def index
    @networkings = Networking.all
  end

  def new
    @networking = Networking.new
    @connections = current_user.networkings
    render 'new.html.erb'
  end
end
