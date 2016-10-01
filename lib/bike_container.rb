module BikeContainer

  DEFAULT_CAPACITY = 20

  attr_reader :capacity


	def initialize(capacity = DEFAULT_CAPACITY)
		@bikes = []
		@capacity = capacity
	end

	def remove_bike
		 raise "#{self.class.name} empty" if @bikes.empty?
		 @bikes.pop

	end

	def add_bike(bike)
		raise "#{self.class.name} full" if full?
		@bikes << bike
	end

 def full?
	 @bikes.length >= @capacity
 end

def empty?
	@bikes.empty?
end


private

attr_reader :bikes

end
