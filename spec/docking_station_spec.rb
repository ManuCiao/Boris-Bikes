require 'docking_station'

describe DockingStation do
	subject(:docking_station) {described_class.new}

	it { is_expected.to respond_to :release_bike }

	it "gets a bike and checks if it works" do
		bike = Bike.new
		subject.dock(bike)
    subject.release_bike
		expect(bike).to be_working
	end

	it { is_expected.to respond_to :bikes}

	it { is_expected.to respond_to(:dock).with(1).arguments }

	it "returns docked bikes" do
		bike = Bike.new
		subject.dock(bike)
		expect(subject.bikes).to eq bike
	end

	it "doesn't release bikes when there aren't any available" do
		expect{ subject.release_bike }.to raise_error "NO BIKES!"
	end

	it "return an error when docking stations are full" do
		bike = Bike.new
		subject.dock(bike)
		expect { subject.dock(bike) }.to raise_error "Docking Stations are full"

	end

end
