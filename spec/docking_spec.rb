require 'docking_station.rb'

describe DockingStation do

  describe "#release_bike" do
    it { is_expected.to respond_to :release_bike }
    it "checks bike being released" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end

  describe "#dock" do
    it "Raises an error if dock is full" do
      20.times { subject.dock Bike.new }
      expect { subject.dock Bike.new }.to raise_error "Already full here love"
    end
  end

  it "brings an error if no bikes available" do
    expect { subject.release_bike }.to raise_error "No bike for you love"
  end

  it "Checks bike is working" do
    bike = Bike.new
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to :bikes }

  it "check bike is docked" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq (subject.bikes << bike)
  end

end
