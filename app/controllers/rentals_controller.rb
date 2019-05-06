require 'pry'
class RentalsController < ApplicationController


    def new
        @rental = Rental.new
        @garage = Garage.find(params[:id])
        @event = Event.find(params[:id])
        # @rental = Rental.find(params[:id])
    end

    def create
        binding.pry
    end

    def show
        @garage = Garage.first
    end

    def index
        @garages = Garage.all
    end

end