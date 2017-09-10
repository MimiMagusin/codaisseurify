# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artist.destroy_all
Song.destroy_all


artist_1 = Artist.create!(first_name: "Hansje Pansje", last_name: "Kevertje", stage_name: "The Beatle!", profile_picture: "A swinging beetle of course")
artist_2 = Artist.create!(first_name: "Humpty", last_name: "Dumpty", stage_name: "The Raging Egg", profile_picture: "A raging egg")

song1 = Song.create!(title: "Ik klom eens op een heg", release_year: 1985, artist: artist_1)
song2 = Song.create!(title: "Ik klom eens op een andere heg", release_year: 1997, artist: artist_1)

photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dwgyjfcoy/image/upload/v1505057561/Humpty-games_ccggo1.png", artist: artist_2)
photo2 = Photo.create!(remote_image_url: "https://cloudinary.com/console/media_library#/dialog/image/upload/coole_kever_c9bxqn", artist: artist_1)
