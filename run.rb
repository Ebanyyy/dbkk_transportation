require './rider.rb'
require './card.rb'
require './station.rb'


rider1 = Rider.new("Bany", "014-1231234", "123")
rider2 = Rider.new("Lisa", "012-5675678", "456")


station1 = Station.new("Tamparuli", 10, 20)
station2 = Station.new("Kota Belud", 30, 40)
station3 = Station.new("Kota Kinabalu", 40, 50)

puts "Welcome to DBKK Transportation"
puts "#{rider1.name}"
puts "#{rider1.id_number}"


card = Card.new("student", "12345")
puts card.card_type
puts card.card_siri_num
puts card.balance
puts card.expired?
puts card.top_up(10)
puts "New balance: #{card.balance}"