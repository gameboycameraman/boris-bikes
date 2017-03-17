require 'docking_station.rb'

describe DockingStation do


  describe "#release_bike" do
    it { is_expected.to respond_to :release_bike }
    it "checks bike being released" do
      subject.dock double(:bike)
      expect(subject.release_bike).to eq bike
    end
    it "does not release a broken bike" do
      bike = double(:bike)
      bike.report_broken
      subject.dock(bike)
      expect { subject.release_bike }.to raise_error "This bike is broken love"
    end
    it "releases the next bike if previous is broken" do
      bike1 = double(:bike)
      subject.dock(bike1)
      bike2 = double(:bike)
      bike2.report_broken
      subject.dock(bike2)
      expect(subject.release_bike).to eq bike1

    end
  end

  describe "#dock" do
    it "Raises an error if dock is full" do
      DockingStation::DEFAULT_CAPACITY.times { subject.dock double(:bike) }
      expect { subject.dock double(:bike) }.to raise_error "Already full here love"
    end
  end

  it "brings an error if no bikes available" do
    expect { subject.release_bike }.to raise_error "No bike for you love"
  end

  it "Checks bike is working" do
    bike = double(:bike)
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to :bikes }

  it "check bike is docked" do
    bike = double(:bike)
    expect(subject.dock(bike)).to eq (subject.bikes << bike)
  end

  describe "#initialize" do
    it "gives a user defined capacity" do
      station = DockingStation.new(50)
      expect(station.capacity).to eq 50
    end

    it "gives a default capacity of 20" do
      station = DockingStation.new
      expect(station.capacity).to eq 20
    end
  end

end
