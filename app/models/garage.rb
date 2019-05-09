require 'pry'
class Garage < ApplicationRecord
    belongs_to :venue
    has_many :events, through: :venues
    has_many :users, through: :rentals
     scope :list_garages, -> (event) { where(venue_id: event.venue_id) }
end