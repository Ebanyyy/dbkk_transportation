class Rider
	attr_reader :name, :contact_number, :id_number

	def initialize(name, contact_number, id_number)
		@name = name 
		@contact_number = contact_number
		@id_number = id_number
	end
end

rider = Rider.new("Bany", "014-1231234", "123")
puts rider.name 
puts rider.contact_number 
puts rider.id_number