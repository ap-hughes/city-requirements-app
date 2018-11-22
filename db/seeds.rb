# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying previous records"

User.destroy_all
Requirement.destroy_all
City.destroy_all

puts "Creating users"

User.create!(email_address: "joe@gmail.com")
User.create!(email_address: "bob@gmail.com")
User.create!(email_address: "max@gmail.com")

puts "Creating requirements"

river = Requirement.create!(name: "I want to see a river")
corrida = Requirement.create!(name: "I want to see the corrida")
museum = Requirement.create!(name: "I want to see the museum")
punks = Requirement.create!(name: "I want to see some punks")
cheese = Requirement.create!(name: "I want to eat cheese")
roman = Requirement.create!(name: "I want to see Roman Art")
greek = Requirement.create!(name: "I want to see Greek Art")
football = Requirement.create!(name: "I want to see a football match")

puts "Creating cities"

london = City.create!(name: "London")
paris = City.create!(name: "Paris")
prague = City.create!(name: "Prague")

puts "Creating requirement_cities"

RequirementCity.create!(city_id: london, requirement_id: museum)

# cities = ["London", "Paris", "Prague", "Madrid", "Berlin", "Rome",
#   "Athens", "Amsterdam"]

# cities.each do |city|
#   City.create!(name: city)
# end

# puts "Creating requirements"

# requirements = ["I want to see a river", "I want to see the corrida", "I want to see the museum",
#   "I want to see some punks", "I want to eat cheese", "I want to see Roman Art",
#   "I want to see Greek Art", "I want to see a football match"]


# I want to see a river – belongs_to: London, Paris, Prague
# I want to see the corrida – belongs_to: Madrid
# I want to see the museum – belongs_to: London, Paris
# I want to see some punks – belongs_to: Berlin, Paris
# I want to eat cheese – belongs_to: Paris
# I want to see Roman Art – belongs_to: Rome
# I want to see Greek Art – belongs_to: Athens
# I want to see a football match – belongs_to: Rome, Amsterdam

puts "Finished seeding db"

