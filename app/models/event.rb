class Event < ApplicationRecord
    has_many :garages 
    has_many :users, through: :rentals
end
