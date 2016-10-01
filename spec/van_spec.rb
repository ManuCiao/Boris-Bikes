require 'van'

describe Van do

it_behaves_like BikeContainer

  let (:broken_bike) { double :broken_bike, working?:false }
  let (:docking_stations) { double :docking_stations }
  let (:working_bike) { double :working_bike, working?:true }
  let (:garage) { double :garage}

  before(:each) do
    allow(docking_stations).to receive(:bikes).and_return([broken_bike, working_bike])
    allow(docking_stations).to receive(:remove_broken).with(broken_bike) {[working_bike]}
    allow(garage).to receive(:fixed_bikes).and_return([working_bike, broken_bike])
    allow(garage).to receive(:remove_broken).with(working_bike) {[broken_bike]}
  end

  describe "#collected" do

    it "returns broken bikes collected from docking stations" do
      subject.collected(docking_stations)
      expect(subject.broken_bikes).to eq [broken_bike]
  	end

    it { is_expected.to respond_to(:collected).with(1).arguments }

  end

  describe "#remove_broken" do

    it "returns remove broken bike" do
      subject.collected(docking_stations)
      subject.remove_broken(broken_bike)
      expect(subject.broken_bikes).to eq []
    end

    it { is_expected.to respond_to(:remove_broken).with(1).arguments }

  end

  describe "#collected_fixed" do

    it "returns collected fixed bikes" do
      subject.collected_fixed(garage)
      expect(subject.broken_bikes).to eq [working_bike]
    end

    it { is_expected.to respond_to(:collected_fixed).with(1).arguments }

  end

end
