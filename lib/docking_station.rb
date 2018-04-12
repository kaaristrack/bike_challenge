class DockingStation
  attr_reader :bicycles, :capacity

  DEFAULT_CAPACITY = 20

  def initialize
    @bicycles = []
    @capacity = DEFAULT_CAPACITY
  end

  def release_bike
    raise 'Docking station empty!' if empty?
    @bicycles.pop
  end

  def dock(bike)
    raise 'Docking station full!' if full?
    @bicycles << bike
  end

  private

  def empty?
    @bicycles.empty?
  end

  def full?
    @bicycles.count >= DEFAULT_CAPACITY
  end
end
