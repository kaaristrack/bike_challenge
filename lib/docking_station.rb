require_relative "bike"

class DockingStation
  def release_bike
    Bike.new # creates a new instance of "Bike"
  end
end
