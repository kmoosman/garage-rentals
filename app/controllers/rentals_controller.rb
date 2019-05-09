require 'pry'
class RentalsController < ApplicationController


    def new
        binding.pry
        @garage = Garage.find(params[:garage_id])
        @event = Event.find(params[:event_id])
        # @rental = Rental.find(params[:id])
    end

    def create
        event = params[:event_id]
        garage = params[:garage_id]
        for day in params[:rental_days] do 
            Rental.create(rental_day: day, garage_id: garage, event_id: event)
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