# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'pry'

event = Event.create(event_name: "First Event #1", date: "01/01/2019", location: "Austin, TX", created_at: nil, updated_at: nil)
Event.create(event_name: "First Event #2", date: "01/03/2019", location: "Austin, TX", created_at: nil, updated_at: nil)
user = User.create(first_name: "Katie", last_name: "Moosman", email: "moosman.katie@gmail.com", username: "kmoosman", password_digest: nil)
for i in 1..10 do
    Garage.create(garage_number: "#{i}", venue: "Utah Motorsport Campus")
end
binding.pry



