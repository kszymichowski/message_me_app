class SessionsController < ApplicationController

    def new
        
    end

    def create
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            flash[:success] = "You have successfully logged in"
            redirect_to root_path
        else 
            flash.now[:error] = "there was something wrong with your login information"
            render 'new'
        end
    end
    def destroy
        session[:user_id] = nil
        flash[:success] = "You have logged out successfully"
        redirect_to login_path
    end
end
