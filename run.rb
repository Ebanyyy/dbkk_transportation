require './rider.rb'
require './card.rb'
require './station.rb'
require './Data_system.rb'


puts "Welcome to DBKK Transportation"
rider = Rider.new("Bany", "0141231234", 123)
puts rider.name
puts rider.contact_number 
puts rider.id_number

file = 'transport.txt'
puts file.class
riders = DataSystem.load_riders(file)
riders, rider = DataSystem.updating_balance(riders, "Bany", 50)
DataSystem.save_rider(file, riders, rider)


station1 = Station.new("Tamparuli", 10, 20)
station2 = Station.new("Kota Belud", 30, 40)
station3 = Station.new("Kota Kinabalu", 40, 50)


puts station1.station_name
puts station1.distance
puts station1.travel_fare



card = Card.new("student")
puts card.card_type
puts card.card_siri_num
puts card.balance
puts card.expired?
puts card.top_up(10)
puts "New balance: #{card.balance}"

