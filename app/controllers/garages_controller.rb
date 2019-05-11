require 'pry'
class GaragesController < ApplicationController
    before_action :require_login

    def rent
        @garage = Garage.find(params[:id])
    end

    def show
        @garage = Garage.first
    end

    def index
        event = Event.find(params[:event_id])
        garages = Garage.all
        @garages = garages.list_garages(event)
        rentals = Rental.all
        @rentals = rentals.event_rentals(event)
        binding.pry
    end

    private
 
    def require_login
        return redirect_to signin_path unless logged_in?
    end
  

end
