# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "cleaning database"
Flat.destroy_all

puts "Creating flat"

13.times do
  flat = Flat.new(
    name:    Faker::Company.name,
    address: Faker::Address.city,
    description: Faker::Food.description,
    price_per_night: (25..200).to_a.sample,
    number_of_guests: (1..6).to_a.sample,
    image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/uikit/greece.jpg"
  )
  puts "Flat with id #{flat.id} has been created"
  flat.save!
end
