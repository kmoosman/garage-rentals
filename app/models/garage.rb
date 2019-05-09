require 'pry'
class Garage < ApplicationRecord
    belongs_to :venue
    # has_many :events, through :venue
     scope :list_garages, -> (venue_id) { where(venue_id: venue_id) }
    #  event_id.venue == garage.venue_id

    #  venue 
end