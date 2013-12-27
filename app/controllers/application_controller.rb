class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout :layout_by_resource

  def authenticate_user!
  	unless user_signed_in?
      redirect_to new_user_session_path,:notice=>"You are not a valid user"
    end
  end

  def layout_by_resource
  	if devise_controller? && resource_name == :user && action_name == 'new'
      "login"
    else
      "application"
    end
  end
end
