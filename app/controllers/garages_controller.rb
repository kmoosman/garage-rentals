require 'pry'
class GaragesController < ApplicationController

    def rent
        @garage = Garage.find(params[:id])
    end

    def show
        @garage = Garage.first
    end

    def index
        binding.pry
        event = Event.find(params[:event_id])
        venue = Venue.find(event.venue_id)
        garages = Garage.all
        @garages = venue.garages.list_garages(venue.id)
        # @garages = event.Garage.all
    end

end
