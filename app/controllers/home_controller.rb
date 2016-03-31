class HomeController < ApplicationController
  def index
  	if user_signed_in?
  		redirect_to_activities_path

  	end
  end
end
