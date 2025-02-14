   
class Airport 
  def initialize (capacity)
    @capacity = capacity
    @number = 0 
    @planes = []
  end 

  def land(plane)
    raise "Cannot land: airoport full." if full?
    raise "Cannot land the plane: weather is stormy" if stormy?
     @planes << plane
  end
  def take_off(plane)
    raise "Cannot take off plane: weather is stormy" if stormy?

  end
  private
  def full?
    @planes.length >= @capacity
  end 
  def stormy?
    rand(1..6) > 4
  end 
end 