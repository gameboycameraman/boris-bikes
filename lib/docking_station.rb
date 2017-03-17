require_relative "bike.rb"

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :bikes, :capacity

  def initialize(number = DEFAULT_CAPACITY )

    @capacity = number
    @bikes = []

  end

  def release_bike
    fail "No bike for you love" if empty?
    fail "This bike is broken love" if @bikes.all? { |bike| bike.broken_bike? }
    selection = @bikes.find { |bike| bike.broken_bike? == false || bike.broken_bike? == nil}
    @bikes.delete(selection)
    selection
  end


  def dock(bike)
    fail "Already full here love" if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end

end
