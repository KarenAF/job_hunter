class NetworkingsController < ApplicationController
  def index
    @networkings = Networking.all
  end

  def new
    @networking = Networking.new
    render 'new.html.erb'
  end
end
