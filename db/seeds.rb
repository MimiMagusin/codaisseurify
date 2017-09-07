# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artist.destroy_all

artist_1 = Artist.create!(first_name: "Hansje Pansje", last_name: "Kevertje", stage_name: "The Beatle!", profile_picture: "A swinging beetle of course")
artist_2 = Artist.create!(first_name: "Humpty", last_name: "Dumpty", stage_name: "The Raging Egg", profile_picture: "A raging egg")
