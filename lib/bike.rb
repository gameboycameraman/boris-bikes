class Bike
  attr_reader :broken

  def working?
    true
  end

  def broken_bike?
    @broken
  end

  def report_broken
    @broken = true
  end
end
