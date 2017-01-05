class DockingStation
  DEFAULT_CAPACITY = 20
  attr_accessor :docked_bikes

  def initialize(capacity = 20)
    @docked_bikes = []

  end

  def release_bike
    raise "There are no docked bikes!" if empty?
    @docked_bikes.pop
  end

  def dock(bike)
    raise "This docking_station is full!" if full?
    @docked_bikes << bike
  end

private

  def full?
    @docked_bikes.length >= DEFAULT_CAPACITY
  end

  def empty?
    @docked_bikes.empty?
  end

end
