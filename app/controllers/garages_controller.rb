require 'pry'
class GaragesController < ApplicationController
    before_action :require_login
    skip_before_action :verify_authenticity_token, only: :create


    def rent
        @garage = Garage.find(params[:id])
    end

    def new
        @event = Event.find(params[:event_id])
        @garage = Garage.find(params[:garage_id])
        event_rentals = Rental.all.event_rentals(@event)
        @rentals = event_rentals.list_rentals(@garage)
        # @rental = Rental.find(params[:id])
    end

    def create
        event = params[:event_id]
        garage = params[:garage_id]
        user_session = session[:user_id]
        
        for day in params[:rental_days] do 
           rental = Rental.create(rental_day: day, garage_id: garage, event_id: event, user_id: user_session)
        end

        redirect_to "/events/#{event}/garages"
    end

    def show
        @garage = Garage.first
    end

    # def index
    #     @garages = Garage.all
    # end

    def index
        event = Event.find(params[:event_id])
        garages = Garage.all
        @user_id = session[:user_id]
        @garages = garages.list_garages(event)
        rentals = Rental.all
        @rentals = rentals.event_rentals(event)
    end

    private
    def require_login
        return redirect_to signin_path unless logged_in?
    end

    def rental_params
        params.require(:user).permit(:rental_day, :garage_id, :event_id,
                                    :user_id)                       
    end

end
