class DockingStation
  attr_reader :bicycles

  DEFAULT_CAPACITY = 20

  def initialize
    @bicycles = []
  end

  def release_bike
     empty?
    @bicycles.pop
  end

  def dock(bike)
    full?
    @bicycles << bike
  end

  private
    def empty?
      if @bicycles.count.empty?
        raise StandardError.new("Docking station empty!")
      else
        false
      end
    end

    def full?
      if @bicycles.count >= DEFAULT_CAPACITY
        raise StandardError.new("Docking station full!")
      else
        false
      end
    end
end
