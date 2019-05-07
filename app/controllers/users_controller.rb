class UsersController < ApplicationController

    def new 
        binding.pry
        @user = User.new
    end

    def login
        user = User.find_by(username: params[:username])
        if user
          session[:user_id] = user.id
          redirect_to user_path(user)
        else
          redirect_to signin_path
        end
    end

    def create
        @user = User.create(user_params)
        session[:user_id] = User.last.id
        binding.pry
        if @user.valid?
            redirect_to events_path
        end
        render 'new'
        
    end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email,
                                    :username, :password)                       
    end

end
