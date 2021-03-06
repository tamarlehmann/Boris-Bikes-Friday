class DockingStation
  attr_reader :bikes
  attr_accessor :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity = 20)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    if empty?
    raise "No bikes available"
    else
    return @bikes.pop
    end
  end

  def dock_bike(bike)
    if full?
      raise "No space available"
    else
      @bikes << bike
    end
  end

private
  def empty?
    if @bikes.empty?
      return true
    else
      return false
    end
  end

  def full?
    if @bikes.count >= DEFAULT_CAPACITY
      return true
    else
      return false
    end
  end

end
