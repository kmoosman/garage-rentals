class UsersController < ApplicationController

    def new 
        @user = User.new
    end

    def welcome
        render './welcome'
    end 

    def show
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
        
    end

    def auth
        # Get access tokens from the google server
       access_token = request.env["omniauth.auth"]
       user = User.from_omniauth(access_token)
 
       user.google_token = access_token.credentials.token
       # Refresh_token to request new access_token
       # Note: Refresh_token is only sent once during the first request
       refresh_token = access_token.credentials.refresh_token
       user.google_refresh_token = refresh_token if refresh_token.present?
       user.save
       session[:user_id] = user.id
    #    binding.pry
       redirect_to events_path
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
