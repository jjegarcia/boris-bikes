require_relative '../lib/bike.rb'

class DockingStation
  BIKE_CAPACITY = 2

  def initialize
    @bikes_available = BIKE_CAPACITY
  end

  def release_bike
    if bikes_available > 0
      @bikes_available -= 1
      Bike.new
    else
      bikes_unavailable
    end
  end

  def bikes_unavailable
    raise 'No available bikes'
  end

  def bikes_available
    @bikes_available
  end

  def dock_over_capacity
    raise 'Max Capacity reached already'
  end

  def dock_bike(bike)
    @bikes_available += 1
    bike.dock
  end

end
