require 'pry'
class EventsController < ApplicationController

    def rent
        @event = Event.find(params[:id])
    end

    def new
    end

    def show
        @event = Event.find(params[:id])
    end

    def index
        @events = Events.all
    end

end