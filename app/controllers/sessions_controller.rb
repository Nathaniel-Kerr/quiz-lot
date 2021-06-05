class SessionsController < ApplicationController

    def create 
        @user = User.find_by(email: params[:email].downcase)

        if !!@user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            message = "Invalid email or password"
            redirect_to login_path, notice: message
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to root_path, notice: 'Logged out'
    end

    def omniauth
        @user = User.from_omniauth(request.env['omniauth.auth'])
        
        if @user.save 
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render :welcome
        end
    end

    def failure
        redirect_to root_path, alert: "Authentication failed, please try again."
    end

    def welcome

    end

end
