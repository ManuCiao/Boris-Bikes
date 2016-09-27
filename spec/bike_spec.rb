require "DockingStation"

describe "Bike" do
  it 'should respond_to working?'do
    good_bike = Bike.new
    expect(good_bike.working?).to eq true
  end


end
