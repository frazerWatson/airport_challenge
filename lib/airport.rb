require_relative 'plane'
require_relative 'weather'

class Airport

attr_accessor :plane 

def initialize
  @planes = []
end

def takeoff
  raise "All planes taken off." if @planes.empty?
  @planes.pop
  'Plane has taken off safely.'
end

def land(plane)
  raise'Airport full.' if @planes.count >= 10	
  @planes << plane
  "Plane landed safely at #{destination}."
end






end