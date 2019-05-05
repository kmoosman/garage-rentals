require 'pry'
class GaragesController < ApplicationController

    def rent
        @garage = Garage.find(params[:id])
    end

    def show
        @garage = Garage.first
    end

    def index
        event_id = params[:event_id]
        @garages = Garage.all.list_garages(event_id)
    end

end
