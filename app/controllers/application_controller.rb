class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def authorize
    if  !session[:admin_id]
      #flash[:notice] = "Please log in"
      redirect_to new_login_path
    end
  end

end
