class Rental < ApplicationRecord
    belongs_to :event, optional: true 
    belongs_to :user, optional: true 
    belongs_to :garage, optional: true 

    @@rental_days = ["Friday", "Saturday", "Sunday"]


    def self.rental_days
        @@rental_days
    end

end
