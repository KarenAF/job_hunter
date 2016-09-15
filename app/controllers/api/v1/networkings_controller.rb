class Api::V1::NetworkingsController < ApplicationController
  def index
    @networkings = Networking.all
    render 'index.json.jbuilder'
  end
end
