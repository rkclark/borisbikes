class DockingStation

  attr_accessor :docked_bikes

  def initialize
    @docked_bikes = []
  end

  def release_bike
    raise "There are no docked bikes!" if @docked_bikes.empty?
    Bike.new
  end

  def dock(bike)
    @docked_bikes << bike
  end

end
