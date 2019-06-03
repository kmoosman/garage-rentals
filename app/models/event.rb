class Event < ApplicationRecord
    belongs_to :venue
    has_many :garages, through: :venue
    has_many :users, through: :rentals
    has_many :rentals
end
