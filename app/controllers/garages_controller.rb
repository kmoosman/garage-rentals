require 'pry'
class GaragesController < ApplicationController

    def rent
        @garage = Garage.find(params[:id])
    end

    def show
        @garage = Garage.first
    end

    def index
        @garages = Garage.all
    end

end
