require 'bike'

describe Bike do
	it {is_expected.to respond_to :working?}

	it "should report a broken bike" do
		bike = Bike.new
		expect(bike.report_broken_bike?).to be true
	end


end
