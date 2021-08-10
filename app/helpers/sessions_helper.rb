module SessionsHelper

  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
<<<<<<< HEAD
  end 

  def current_user?(user)
    user == current_user
=======
>>>>>>> updating-users
  end

  # Returns the current logged-in user (if any).
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # Returns true if the user is logged in, false otherwise.
  def log_in?
    !current_user.nil?
  end

<<<<<<< HEAD
  def log_out
=======
    def log_out
>>>>>>> updating-users
    session.delete(:user_id)
    @current_user = nil
  end
  
<<<<<<< HEAD
    def redirect_back_or(default)
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end

  # Stores the URL trying to be accessed.
  def store_location
    session[:forwarding_url] = request.url if request.get?
  end
=======
>>>>>>> updating-users
end
