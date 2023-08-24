class Rider
	attr_reader :name, :contact_number, :id_number, :card

	def initialize(name, contact_number, id_number)

		@name = name 
		@contact_number = contact_number
		@id_number = id_number
		@card = Card.new("Student")
	end
end

