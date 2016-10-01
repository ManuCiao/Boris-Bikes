require_relative 'bike'

class DockingStation

	include BikeContainer

	def release_bike
		 raise "NO BIKES!" if working_bikes.empty?
		 @bikes.delete(working_bikes.pop)

	end

	def dock(bike)
		add_bike(bike)
	end

	private

	def working_bikes
    @bikes.select { |bike| bike.working?}
  end

end
