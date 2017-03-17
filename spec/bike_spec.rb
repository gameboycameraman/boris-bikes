require 'bike.rb'

describe Bike do
  it { is_expected.to respond_to :working? }

  describe "#broken_bike?" do
    it { is_expected.to respond_to :broken_bike? }
  end

  describe "#report_broken" do
    it "reports a broken bike" do
    bike = Bike.new
    bike.report_broken
    expect(bike.broken).to eq true
    end
  end

end
