require "DockingStation"

describe "DockingStation" do
  it 'should respond to release_bike' do
    expect(docking_station).to respond_to(:release_bike)
  end

end
