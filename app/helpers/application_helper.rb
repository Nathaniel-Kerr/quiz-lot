module ApplicationHelper
    # helper_method :current_user
    # helper_method :logged_in?

    def logged_in?
        !!session[:user_id]
    end
    
    def current_user
        @current_user ||= User.find_by_id(session[:user_id]) if !!session[:user_id]
    end
end
