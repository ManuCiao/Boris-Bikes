class Bike

	def report_broken_bike
 		@broken_bike = true
	end

	def working?
		true
	end

  def broken?
    @broken_bike
  end

end
