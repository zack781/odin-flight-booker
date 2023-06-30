# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

airport1 = Airport.create(code: "NYC")
airport2 = Airport.create(code: "SOF")
airport3 = Airport.create(code: "INC")
airport4 = Airport.create(code: "NB")
airport5 = Airport.create(code: "WA")

Flight.create(duration: "5 hours", start_datetime: Time.new(2023, 9, 1, 12, 35, 0), arrival_airport_id: airport3.id, departure_airport_id: airport4.id)

Flight.create(duration: "12 hours", start_datetime: Time.new(2023, 5, 2, 14, 15, 0 ), arrival_airport_id: airport1.id, departure_airport_id: airport4.id)

Flight.create(duration: "9 hours", start_datetime: Time.new(2023, 12, 1, 7, 45, 0 ), arrival_airport_id: airport5.id, departure_airport_id: airport1.id)

Flight.create(duration: "7 hours", start_datetime: Time.new(2023, 10, 3, 17, 25, 0 ), arrival_airport_id: airport3.id, departure_airport_id: airport2.id)

Flight.create(duration: "3 hours", start_datetime: Time.new(2023, 6, 4, 9, 30, 0 ), arrival_airport_id: airport2.id, departure_airport_id: airport1.id)



