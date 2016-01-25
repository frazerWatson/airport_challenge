require_relative 'plane'
require_relative 'weather'

class Airport

attr_reader :plane 

def initialize
  @planes = []
end

def takeoff
  raise "All planes have taken off." if @planes.empty?
  raise "Plane cannot take off because weather is stormy." if strm == 'storm'
  @planes.pop 
  'Plane has taken off safely.'
end

def land(plane)
  raise'Airport full.' if @planes.count >= 5	
  @planes << plane
  "Plane landed safely at."
end

def strm
   x = 1+ rand(7)
    if x == 1 || x == 3
    	return 'storm'
    end
  end




end