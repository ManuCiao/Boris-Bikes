require 'garages'

describe Garages do

  let (:broken_bike) { double :broken_bike, working?:false }
  let (:van) { double :van}

  before(:each) do
    allow(van).to receive(:collected).and_return([])
    allow(van).to receive(:broken_bikes).and_return([broken_bike])
  end

    describe "#collected" do

      it "returns broken bikes collected from docking stations" do
        subject.collected(van)
        expect(subject.fixed_bikes).to eq [broken_bike]
    	end

      it { is_expected.to respond_to(:collected).with(1).arguments }

    end

  end
