# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


puts "Cleaning database..."
Review  .destroy_all
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = Restaurant.create(name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "french")
pizza_east = Restaurant.create(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian")
mocksi = Restaurant.create(name: "Mocksi", address: "546 Rodeo Drive", category: "japanese", phone_number: 01333333333353)
crackers = Restaurant.create(name: "crackers", address: "Friedrichstrasse 2", category: "japanese", phone_number: 030124353243)
mcdonalds = Restaurant.create(name: "Mc Donalds", address: "Main St 22", category: "french")

puts "restaurants created..."

yummy = Review.create(content: "yummy yummy", rating: 4)
yummy.restaurant = dishoom 
yummy.save

tasty = Review.create(content: "tasty food!", rating: 5)
tasty.restaurant = pizza_east  
tasty.save

fun = Review.create(content: "such a fun place", rating: 4)
fun.restaurant = mocksi  
fun.save

ok_food = Review.create(content: "It was ok", rating: 3)
ok_food.restaurant = crackers  
ok_food.save

the_best = Review.create(content: "the classic", rating: 5)
the_best.restaurant = mcdonalds  
the_best.save


puts "ratings created..."
puts "Finished!"
