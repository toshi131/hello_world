class ApplicationController < ActionController::Base
protect_from_forgery with: :exception
  include SessionsHelper
  
  private

    # Confirms a logged-in user.
    def log_in_user
      unless log_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_path
      end
    end
end
