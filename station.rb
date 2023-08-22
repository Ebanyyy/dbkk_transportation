class Station
	attr_reader :station_name, :distance, :travel_fare

	def initialize(station_name, distance, travel_fare)
		@station_name = station_name
		@distance = distance
		@travel_fare = travel_fare 
	end

	def deduct_fare(amount)
		
	end
end

require './Card'

station1 = Station.new("Tamparuli", 10, 20)
station2 = Station.new("Kota Belud", 30, 40)

puts station1.station_name
puts station1.distance
puts station1.travel_fare
puts station1.deduct_fare(50)
