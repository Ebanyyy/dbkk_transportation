class DataSystem
	def self. load_riders(filename)
		riders = []

		File.foreach(filename) do |line|
			name, balance, contact_number, id_number, expire = line.chomp.split(',')

			rider = Rider.new(name, contact_number, id_number)
			rider.card.top_up(balance.to_i)
			rider.card.expire! if expire == 'true'
			riders << rider
		end

		riders
	end

	def self.updating_balance(riders, rider_name, rider_balance)
		rider = riders.find { |rider| rider.name == rider_name }

		if rider 
			rider.card.top_up(rider_balance)
		else
			puts "#{rider_name} not found"
		end

		return riders, rider 
	end

	def self.save_rider(filename, riders, rider)
		File.open(filename, "r+") do |file|
			riders.each do |rider|
				file.puts "#{rider.name}, #{rider.card.balance}, #{rider.card.expired?}"
			end
		end
	end	
end

