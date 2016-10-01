require 'bike'

describe Bike do
	it {is_expected.to respond_to :working?}

	it "should report bike is broken" do
		subject.report_broken_bike
		expect(subject).to be_broken
	end


end
