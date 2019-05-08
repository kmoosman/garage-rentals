class UsersController < ApplicationController

    def new 
        binding.pry
        @user = User.new
    end

    def signin(error = nil)
        @error = error

    end

    def login
        @user = User.find_by(username: params[:user][:username])
        if @user && @user.authenticate(params[:user][:password])
          session[:user_id] = @user.id
          redirect_to events_path(@user)
          else
        #   @error = 'Username or password was incorrect'
          redirect_to signin_path, :danger => "Incorrect username or password"
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

    def logout
        session[:user_id] = nil 
        redirect_to root_path
      end

    private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email,
                                    :username, :password)                       
    end

end
