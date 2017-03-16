require 'docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to :release_bike}

  it "Checks bike is working" do
    bike = Bike.new
    expect(bike).to be_working
  end
end
