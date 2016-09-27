require "DockingStation"

describe "DockingStation" do
  docking_station = DockingStation.new
  it 'should respond to release_bike' do
    expect(docking_station).to respond_to(:release_bike)
  end

    it 'should respond_to working?'do
      bike = docking_station.release_bike
      expect(bike.working?).to eq true
    end
end
