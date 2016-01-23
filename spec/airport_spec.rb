require 'airport'
require 'plane'

describe Airport do
  it 'lands a plane' do
  plane = Plane.new	
  expect(subject.land(plane)).to eq 'Plane landed safely.'
  end
  
  it 'plane takes off' do
  	expect(subject.takeoff).to eq 'Plane has taken off safely.'
  end

  it 'raises an error if there are no planes' do
  	expect {subject.takeoff}.to raise_error 'All planes taken off.'
  end

    describe '#land' do 
    	it 'raises an error when full' do
    	10.times { subject.land Plane.new}
    	expect {subject.land Plane.new }.to raise_error 'Airport full.'
    end
end
end
