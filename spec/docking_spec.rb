require 'docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to :release_bike}

  it "Checks bike is working" do
    bike = Bike.new
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to :bike }

  it "check bike is docked" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.dock(bike)).to eq bike    
  end

end
