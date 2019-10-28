# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.all.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('users') #commande pour reset l'id
Gossip.all.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('gossips') #commande pour reset l'id

20.times do
	u = User.create(name: Faker::Name.last_name, email: Faker::Internet.email, first_name: Faker::Name.first_name, age: Faker::Number.between(from: 10, to: 99) )
end

10.times do
	g = Gossip.create(gossip: Faker::ChuckNorris.fact, user_id: rand(1..10), title: Faker::TvShows::Simpsons.location)
end
