require_relative "bike.rb"

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes, :capacity
  def initialize
    @capacity = DEFAULT_CAPACITY
    @bikes = []
  end

  def release_bike
    fail "No bike for you love" if empty?
    @bikes.pop
  end


  def dock(bike)
    fail "Already full here love" if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end
