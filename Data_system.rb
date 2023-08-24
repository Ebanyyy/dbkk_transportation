class DataSystem
		def self. load_riders(filename)
			riders []

		File.foreach(filename) do |line|
			name, type, balance,expiry = line.chomp,split(',')
			rider.card.top_up(balance.to_i)
			rider.card.expire! if expiry == 'true'
			riders << rider
		end

		riders
	end

	def self.updating_balance(riders, rider_name, rider_balance)
		rider = riders.find {|rider| rider.name == rider_name}
		if rider 
			rider.card.top_up(rider_balance)
		else
			puts "#{rider_name} not found"
		end

		return riders, rider 
	end

	def self.save_rider(filename, riders, rider)
		File.open(filename, "r+").each do |file|
			riders.each do |rider|
				file.puts "#{rider.name} #{rider.card.balance}, #{rider.card.expired?}"
			end
		end
	end	
end