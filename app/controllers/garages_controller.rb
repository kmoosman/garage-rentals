require 'pry'
class GaragesController < ApplicationController

    def rent
        @garages = Garage.all
        
    end

end
