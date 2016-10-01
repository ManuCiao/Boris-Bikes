require_relative 'van'

class Garages

  include BikeContainer

  def accept(bike)
    bike.fix
    add_bike bike
  end

end
