class Rental < ApplicationRecord
    belongs_to :event
    belongs_to :user
    belongs_to :garage

    @@rental_days = ["Friday", "Saturday", "Sunday"]


    def self.rental_days
        @@rental_days
    end
    
end
