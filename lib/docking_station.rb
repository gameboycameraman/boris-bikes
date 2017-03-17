require_relative "bike.rb"

class DockingStation
  attr_reader :bikes, :capacity
  def initialize
    @capacity = 20
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
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end

end
