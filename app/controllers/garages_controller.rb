require 'pry'
class GaragesController < ApplicationController

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
    end

end
