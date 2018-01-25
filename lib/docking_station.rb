class DockingStation
  attr_reader :bicycles

  def initialize
    @bicycles = []
  end

  def release_bike
    if @bicycles.empty?
      raise StandardError.new("Docking station empty!")
      @bicycles.pop # release a bike
    end
  end

  def dock(bike)
    if @bicycles.count >= 20
      raise StandardError.new("Docking station full!")
      @bicycles << bike
    end
  end
end
