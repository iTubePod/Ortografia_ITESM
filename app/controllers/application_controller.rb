class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def set_current_user
  	Course.current_user = current_user
  	Activity.current_user = current_user
  end
  def can_administer?
    current_user.try(:isProfessor?)
  end
end