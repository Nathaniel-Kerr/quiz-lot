class UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
    end

    def index
        if session[:user_id]
            @user = User.find(session[:user_id])
        end
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            render 'new'
        end
    end

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end
