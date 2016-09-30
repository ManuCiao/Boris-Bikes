class Bike
 attr_reader :broken_bike

	def initialize
		@broken_bike = false
	end

	def report_broken_bike?
 		@broken_bike = true
	end

	def working?
		true
	end

end
