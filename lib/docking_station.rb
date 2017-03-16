require_relative "bike.rb"

class DockingStation
  attr_reader :bike

  def release_bike
    unless @bike
      fail "No bike for you love"
    else
      @bike
    end
  end

  def dock(bike)
    if @bike
      fail "Already full here love"
    else
      @bike = bike
    end
  end

end
