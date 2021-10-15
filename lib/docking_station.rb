require_relative '../lib/bike.rb'

class DockingStation
  DEFAULT_DOCK_CAPACITY = 25

  def initialize(dock_capacity = DEFAULT_DOCK_CAPACITY)
    @bikes = []
    @dock_capacity = dock_capacity
  end

  def release_bike
    fail 'No available bikes' unless @bikes.size > 0
    @bikes.pop
  end

  def dock_bike(bike)
    fail 'Max Capacity reached already' unless @bikes.size < @dock_capacity
    @bikes << bike
  end

  def dock_capacity
    @dock_capacity
  end
end
