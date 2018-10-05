# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.create(name: "Foobar")
Airport.create(name: "Foobaz")
Airport.create(name: "Lorem")
Airport.create(name: "Ipsum")
Airport.create(name: "Example")

Flight.create(date: "6/1", duration: "3 hours", from_airport_id: 1, to_airport_id: 2)
Flight.create(date: "1/13", duration: "6 hours", from_airport_id: 2, to_airport_id: 3)
Flight.create(date: "3/13", duration: "9 hours", from_airport_id: 3, to_airport_id: 1)
Flight.create(date: "4/18", duration: "12 hours", from_airport_id: 4, to_airport_id: 2)
Flight.create(date: "4/13", duration: "22 hours", from_airport_id: 5, to_airport_id: 3)
Flight.create(date: "12/24", duration: "5 hours", from_airport_id: 4, to_airport_id: 5)
Flight.create(date: "9/6", duration: "32 hours", from_airport_id: 1, to_airport_id: 4)
Flight.create(date: "11/1", duration: "8 hours", from_airport_id: 2, to_airport_id: 5)