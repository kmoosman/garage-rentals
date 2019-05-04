# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Garage.create(garage_number: "1", friday: false, saturday: true, sunday: false, created_at: nil, updated_at: nil)
Garage.create(garage_number: "2", friday: false, saturday: true, sunday: false, created_at: nil, updated_at: nil)
Event.create(event_name: "First Event #1", date: "01/01/2019", location: "Austin, TX", created_at: nil, updated_at: nil)
User.create(first_name: "Katie", last_name: "Moosman", email: "moosman.katie@gmail.com", username: "kmoosman", password_digest: nil, created_at: "2019-05-04 03:49:27", updated_at: "2019-05-04 03:49:27")