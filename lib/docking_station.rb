require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_accessor :bikes, :capacity


	def initialize(capacity = DEFAULT_CAPACITY)
		self.bikes = []
		self.capacity = capacity
	end

	def release_bike
		 raise "NO BIKES!" if empty?

		 #raise "This bike is broken!" if bikes.broken_bike == true
		 self.bikes.pop

	end

	def dock(bike)
		raise "Docking Stations are full" if full?
		self.bikes << bike
	end

 def full?
	 self.bikes.length >= self.capacity
 end

def empty?
	self.bikes.count < 1
end

private :full?, :empty?

end
