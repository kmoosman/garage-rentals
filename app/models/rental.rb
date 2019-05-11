class Rental < ApplicationRecord
    belongs_to :event, optional: true 
    belongs_to :user
    belongs_to :garage, optional: true 
    scope :event_rentals, -> (event) { where(event_id: event.id) }
    scope :list_rentals, -> (garage) { where(garage_id: garage.id) }
    scope :has_rental, -> (garage, day) { where(garage_id: garage.id, rental_day: day) }
    scope :has_available_garages, -> (garage) { where(garage_id: garage.id) }


    @@rental_days = ["Friday", "Saturday", "Sunday"]


    def self.rental_days
        @@rental_days
    end

    def self.rented(garage)
        @rental = Rental.find_by(event_id: event.id)
        if @rental
            puts @rental
        else 
            puts "no rental found"
        end 
    end

end
