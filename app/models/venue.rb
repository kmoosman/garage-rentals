class Venue < ApplicationRecord
    has_many :garages
    has_many :events
end
