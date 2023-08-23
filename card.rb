class Card
	attr_reader :balance #different way to def

	def initialize (card_type, card_siri_num)
		@card_type = card_type 
		@card_siri_num = card_siri_num
		@expired = false
		@balance = 0
	end

	def card_type
		@card_type
	end

	def card_siri_num
		@card_siri_num
	end

	def expired?
		@expired
	end

	def expire!
		@expired = true
	end

	def top_up(amount)
		@balance += amount
	end

	def deduct_fare(amount)
		@balance -= amount
		puts "Your card balance is: RM#{card.balance}"
	end
end

