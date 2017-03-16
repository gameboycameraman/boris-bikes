require_relative "bike.rb"

class DockingStation
  attr_reader :bikes, :capacity
  def initialize
    @capacity = 20
    @bikes = []
  end

  def release_bike
    if @bikes.empty?
      fail "No bike for you love"
    else
      @bikes.pop
    end
  end

  def dock(bike)
    if @bikes.count >= @capacity
      fail "Already full here love"
    else
      @bikes << bike
    end
  end

end
