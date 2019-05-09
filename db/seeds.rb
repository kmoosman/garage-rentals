# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'pry'

venue = Venue.create(name: "Utah Motorsports Campus", city: "Tooele", state: "Utah")
event = Event.create(event_name: "First Event #1", date: "01/01/2019", venue_id: venue.id, created_at: nil, updated_at: nil)
Event.create(event_name: "First Event #2", date: "12/01/2019", venue_id: venue.id, created_at: nil, updated_at: nil)
user = User.create(first_name: "Katie", last_name: "Moosman", email: "moosman.katie@gmail.com", username: "kmoosman", password: "1234")
Rental.create(event_id: "1", garage_id: 1, user_id: user.id, rental_day: "Friday")
Rental.create(event_id: "1", garage_id: 1, user_id: user.id, rental_day: "Saturday")
Rental.create(event_id: "1", garage_id: 3, user_id: user.id, rental_day: "Saturday")
Rental.create(event_id: "2", garage_id: 3, user_id: user.id, rental_day: "Saturday")



for i in 1..10 do
    Garage.create(garage_number: "#{i}", venue_id: venue.id )
end



