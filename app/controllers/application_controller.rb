class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def authenticate_user!
    redirect_to '/login' unless current_user
  end 

  # def indeed_results
  #   client = Indeed::Client.new"#{ENV["myIndeedAPIkey"]}"
  #   params = {
  #       :q => 'ruby',
  #       :l => 'chicago',
  #       :userip => '1.2.3.4',
  #       :useragent => 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2)',
  #   }
  #   @data = client.search(params)
  #   @results = @data["results"]
  # end   
end
