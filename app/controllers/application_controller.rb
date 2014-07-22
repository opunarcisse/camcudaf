class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # filter_parameter_logging :password

 protected
   def authorize
     if session[:user_id].nil?
       flash[:error] = "Sorry only for authorised users "
       redirect_to  login_path
     end
   end
end
