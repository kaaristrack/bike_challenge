require_relative "bike"

class DockingStation
  attr_reader :bike
  def release_bike
    Bike.new # creates a new instance of "Bike"
  end

  def dock(bike)
    @bike = bike
  end
end
