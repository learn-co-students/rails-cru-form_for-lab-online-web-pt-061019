# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

kondo = Artist.create(name: "Koji Kondo", bio: "Music composer for Legend of Zelda.")
ost = Genre.create(name: "OST")
main_theme = Song.create(name: "Main Theme", artist_id: 1, genre_id: 1)
