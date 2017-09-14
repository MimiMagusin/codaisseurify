# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artist.destroy_all
Song.destroy_all


artist_1 = Artist.create!(first_name: "Hansje Pansje", last_name: "Kevertje", stage_name: "The Beatle!", remote_image_url: "http://res.cloudinary.com/dwgyjfcoy/image/upload/v1505057560/coole_kever_c9bxqn.jpg")
artist_2 = Artist.create!(first_name: "Humpty", last_name: "Dumpty", stage_name: "The Raging Egg", remote_image_url: "http://res.cloudinary.com/dwgyjfcoy/image/upload/v1505059324/xuhskyjfjetpxagggiqe.png")
artist_3 = Artist.create!(first_name: "Kabouter", last_name: "Spillebeen", stage_name: "The Angry Leprechaun", remote_image_url: "http://res.cloudinary.com/dwgyjfcoy/image/upload/v1505111986/boze_kabouter_kksl2r.jpg")

song1 = Song.create!(title: "Ik klom eens op een heg", release_year: 1985, artist: artist_1)
song2 = Song.create!(title: "Ik klom eens op een andere heg", release_year: 1997, artist: artist_1)
song3 = Song.create!(title: "I sat on a wall", release_year: 1845, artist: artist_2)
song4 = Song.create!(title: "I wipte op een paddenstoel", release_year: 2010, artist: artist_3)
song5 = Song.create!(title: "Ik viel van de heg", release_year: 1987, artist: artist_1)
song6 = Song.create!(title: "Hans in de goot", release_year: 2000, artist: artist_1)
song7 = Song.create!(title: "Rood is een mooie kleur", release_year: 2012, artist: artist_3)
song8 = Song.create!(title: "Ik haat paddenstoelen", release_year: 2013, artist: artist_3)
