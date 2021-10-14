require_relative '../lib/bike.rb'

class DockingStation
  BIKE_CAPACITY = 10

  def initialize
    @bikes_available = BIKE_CAPACITY
  end

  def release_bike
    if bikes_available > 0
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
end
