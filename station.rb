class Station
	attr_reader :station_name, :distance, :travel_fare

	def initialize(station_name, distance, travel_fare)
		@station_name = station_name
		@distance = distance
		@travel_fare = travel_fare 
	end
end
