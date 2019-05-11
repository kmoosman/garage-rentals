require 'pry'
class RentalsController < ApplicationController
    before_action :require_login
    skip_before_action :verify_authenticity_token, only: :create

    def new
        @event = Event.find(params[:event_id])
        @garage = Garage.find(params[:garage_id])
        event_rentals = Rental.all.event_rentals(@event)
        @rentals = event_rentals.list_rentals(@garage)
        
       
        # @rental = Rental.find(params[:id])
    end

    def create
        event = params[:event_id]
        garage = params[:id]
        
        for day in params[:rental_days] do 
            Rental.create(rental_day: day, garage_id: garage, event_id: params[:event_id], user_id: session[:user_id])
        end

        redirect_to "/events/#{event}/garages"
    end

    def show
        @garage = Garage.first
    end

    def index
        @garages = Garage.all
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