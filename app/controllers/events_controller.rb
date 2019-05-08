require 'pry'
class EventsController < ApplicationController

    def rent
        @event = Event.find(params[:id])
    end

    def new
        @event = Event.new
    end

    def create
        event = Event.create(event_params)
        redirect_to "/events/#{event.id}/garages"
    end

    def show
        @event = Event.find(params[:id])
    end

    def index
        @events = Event.all
        
    end

    def select 
        event = Event.find(params[:event_id])
        redirect_to "/events/#{event.id}/garages"
    end

    private 

    def event_params
        params.require(:event).permit(:event_name, :location,
                                          :date,)
    end

end