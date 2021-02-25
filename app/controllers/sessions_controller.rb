class SessionsController < ApplicationController

    def new 
        @user =User.new
        render :login
    end
    
    def home
        @user = User.find_by_id(params[:id])
    end

    def create
        @user = User.find_by_id(params[:id])
        if @username && user.authenticate(params[:user][:password])
            session[:user_id] = @user.id 
            redirect_to user_path(@user)
        else
            redirect_to '/login'
        end
    end
        
end