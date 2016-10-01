require_relative 'docking_station'

class Van

include BikeContainer

  def collected(docking_stations)
    docking_stations.bikes.each do |bike|
      if !bike.working?
        @broken_bikes << bike
        docking_stations.remove_broken(bike)
      end
    end
  end

  def collected_fixed(garage)
    garage.fixed_bikes.each do |bike|
      if bike.working?
        @broken_bikes << bike
        garage.remove_broken(bike)
      end
    end
  end

  def remove_broken(bike)
		@broken_bikes.delete(bike)
	end

end
