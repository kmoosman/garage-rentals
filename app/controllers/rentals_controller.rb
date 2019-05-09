require 'pry'
class RentalsController < ApplicationController


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
            Rental.create(rental_day: day, garage_id: garage, event_id: params[:event_id], user_id: "1")
        end

        
        redirect_to event_garages_path
    end

    def show
        @garage = Garage.first
    end

    def index
        @garages = Garage.all
    end

end