require 'pry'
class Garage < ApplicationRecord
     belongs_to :event
     belongs_to :user, optional: true

    #  s

    def self.list_garages(params)
        @garages = Garage.all.where(event_id: params[:event_id])
    end

end