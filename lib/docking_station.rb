require_relative '../lib/bike.rb'

class DockingStation
  DOCK_CAPACITY = 20

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No available bikes' unless @bikes.size > 0
    @bikes.pop
  end

  def dock_bike(bike)
    fail 'Max Capacity reached already' unless @bikes.size < DOCK_CAPACITY
    @bikes << bike
  end
end
