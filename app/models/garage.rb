require 'pry'
class Garage < ApplicationRecord
    belongs_to :venue
    # has_many :events, through :venue
     scope :list_garages, -> (event) { where(venue_id: event.venue_id) }
end