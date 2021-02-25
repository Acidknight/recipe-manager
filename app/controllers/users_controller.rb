class UsersController < ApplicationController

    def new
        @user = User.find_by_id(params[:id])
    end

    def create 
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id 
            redirect_to @user 
        else
            @error = @user.errors.full_messages.to_sentence
            render new 
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end

end
