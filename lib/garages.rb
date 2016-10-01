require_relative 'van'

class Garages

  attr_reader :fixed_bikes

  def initialize
    @fixed_bikes = []
  end

  def collected(van)
    van.broken_bikes.each do |broken_bike|
      if broken_bike.working? == false
        @fixed_bikes << broken_bike
      end
    end
  end

end
