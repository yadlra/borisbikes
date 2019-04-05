require_relative 'bike'

class DockingStation
  attr_reader :bike
  def release_bike
     fail "No bikes available" if  @bikes.empty?
     @bikes.pop
  end

  def dock(bike)
    fail "Station is full" if @bikes.count >= 20
    @bikes.push(bike)
  end

   def initialize
     @bikes = []
   end

end
