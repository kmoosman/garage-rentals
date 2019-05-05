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
        for i in 1..10 do
            Garage.create(garage_number: "#{i}", friday: false, saturday: false, sunday: false, event: event, user: nil)
        end
        redirect_to "/events/#{event.id}/garages"
    end

    def show
        @event = Event.find(params[:id])
    end

    def index
        @events = Event.all
    end

    private 

    def event_params
        params.require(:event).permit(:event_name, :location,
                                          :date,)
    end

end