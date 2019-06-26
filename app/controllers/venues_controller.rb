require 'pry'
class VenuesController < ApplicationController

    def new 
        @venue = Venue.new
    end 

    def create
        venue = Venue.create(venue_params)
        redirect_to "/venues/#{venue.id}"
    end

    def show
        @venue = Venue.find(params[:id])

    end


    def index
        @venues = Venue.all
        respond_to do |format|
            format.html 
            format.json {render json: @venues}
        end
        # render json: @venues
    end

    private 

    def venue_params
        params.require(:venue).permit(:name, :city,
                                          :state)
    end

    def require_login
        return redirect_to signin_path unless logged_in?
    end


end
