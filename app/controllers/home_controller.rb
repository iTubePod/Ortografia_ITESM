class HomeController < ApplicationController
  def index
  	/@usr = current_user/
  	if user_signed_in?
  		@cursos = UserCourse.where("user_id = ?", current_user)
  	else
  		redirect_to new_user_session_url
  	end
  end
end