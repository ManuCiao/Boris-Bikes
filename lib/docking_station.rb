require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes, :capacity


	def initialize(capacity = DEFAULT_CAPACITY)
		@bikes = []
		@capacity = capacity
	end

	def release_bike
		 raise "NO BIKES!" if empty?
		 raise "These bikes are broken!" if no_working_bikes?
		 @bikes.pop

	end

	def dock(bike)
		raise "Docking Stations are full" if full?
		@bikes << bike
	end

 def full?
	 @bikes.length >= @capacity
 end

def empty?
	@bikes.count < 1
end

def no_working_bikes?
	!bikes.last.working?
end

private :full?, :empty?

end
