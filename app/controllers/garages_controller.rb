require 'pry'
class GaragesController < ApplicationController

    def rent
        @garages = Garage.all
    end

    def show
        @garage = Garage.first
    end

end
