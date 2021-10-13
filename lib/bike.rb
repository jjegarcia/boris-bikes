class Bike
  def initialize
    @docked = false
  end

  def working?
    true
  end

  def docked?
    @docked
  end

  def dock
    @docked = true
  end
end