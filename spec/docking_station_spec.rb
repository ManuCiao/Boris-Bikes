require 'docking_station'
require 'support/shared_examples_for_bike_container'


describe DockingStation do

	subject(:docking_station) {described_class.new}
	let(:working_bike) { double :working_bike, working?:true }
	let(:broken_bike) { double :broken_bike, working?:false }

	describe '#release_bike' do

		it "returns a bike and checks if it works" do
			subject.dock working_bike
			expect(subject.release_bike).to be_working
		end

		it "returns docked bikes" do
			subject.dock working_bike
			expect(subject.bikes).to eq [bike]
		end

		it "doesn't release bikes when there aren't any available" do
			expect{ subject.release_bike }.to raise_error(RuntimeError, "NO BIKES!")
		end

		it "doesn't release broken bikes" do
			subject.dock broken_bike
			expect{ subject.release_bike }.to raise_error(RuntimeError, "These bikes are broken!")
		end

		it "return release only working bikes" do
			subject.dock broken_bike
      subject.dock working_bike
			expect(subject.release_bike).to eq working_bike
		end

	end

	describe "#dock" do

		it "returns an error when docking stations are 20" do
			subject.capacity.times { subject.dock(:bike)}
			expect { subject.dock(:bike)}.to raise_error(RuntimeError)
		end

		it 'return a docked bike to an empty station' do
      expect(subject.dock :bike).to eq([(:bike)])
    end

	end

end
