# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

5.times do
  restaurant = Restaurant.create!( name: Faker::Restaurant.name,
                                   address: Faker::Address.street_address + " " + Faker::Address.city,
                                   category: Restaurant::CATEGORY.sample,
                                   phone_number: Faker::PhoneNumber.cell_phone
                                  )
  puts "Created #{restaurant.name}"
end

puts "Finished!"
