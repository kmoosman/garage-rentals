require 'pry'
class Garage < ApplicationRecord
    belongs_to :venue
    # has_many :events, through :venue
     scope :list_garages, -> (event_id) { where(event_id: event_id) }
end