# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "creating restaurants"
restaurants = Restaurant.create([{ name: 'Good Vibes Cafe', address: 'Pacific Ave 202, California, USA', phone_number:'+13125553428', category: 'japanese' },
  { name: 'Omisubi', address: 'Nihongo 3, Tokyo, Japan ', phone_number:'+25234789453', category: 'japanese' },
  { name: 'Trattoria Puglia', address: 'via Carlo Adda 2, Milano, Italy', phone_number:'+391234567890', category: 'italian'},
  { name: 'Raw', address: '24 Melrose St, London, UK', phone_number:'+552555341328', category: 'french'},
  { name: 'Tsing Tao', address: '43 Manhatten Ave, New York, USA', phone_number:'+131255532218', category: 'chinese'}
  ])
puts restaurants
puts 'adding reviews in restaurants'

reviews = restaurants.each do |restaurant|
  yummy = Review.new(content: "yummy yummy", rating: 4)
  yummy.restaurant = restaurant
end

puts reviews
puts "Finish"
