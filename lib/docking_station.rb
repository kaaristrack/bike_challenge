class DockingStation
  attr_reader :bike

  def dock(bike)
    @bike = bike
  end

  def release_bike
    if @bike == nil || @bike >= 1
      raise StandardError.new
    end
  end
end
