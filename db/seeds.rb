puts "Destroying previous records"

RequirementCity.destroy_all
User.destroy_all
Requirement.destroy_all
City.destroy_all

puts "Creating users"

User.create!(email_address: "joe@gmail.com", job_title: "Applications Programmer")
User.create!(email_address: "bob@gmail.com", job_title: "Computer Language Programmer")
User.create!(email_address: "max@gmail.com", job_title: "Junior Software Developer")

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
madrid = City.create!(name: "Madrid")
berlin = City.create!(name: "Berlin")
rome = City.create!(name: "Rome")
athens = City.create!(name: "Athens")
amsterdam = City.create!(name: "Amsterdam")

puts "Creating requirement_cities"

river.city_ids = [london.id, paris.id, prague.id]
corrida.city_ids = madrid.id
museum.city_ids = [london.id, paris.id]
punks.city_ids = [berlin.id, paris.id]
cheese.city_ids = paris.id
roman.city_ids = rome.id
greek.city_ids = athens.id
football.city_ids = [rome.id, amsterdam.id]

puts "Finished seeding db"

