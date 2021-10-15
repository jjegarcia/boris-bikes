require_relative '../lib/docking_station.rb'
DOCK_CAPACITY = 25
subject = DockingStation.new
describe DockingStation do
  it 'dokingstation should release bike' do
    expect(subject).to respond_to :release_bike
  end

  it 'release bike should return a bike object' do
    subject.dock_bike(Bike.new)
    expect(subject.release_bike).to be_instance_of Bike
  end

  it 'releases working bikes' do
    subject.dock_bike(Bike.new)
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'raises exception if no bikes in dock' do
    expect { subject.release_bike }.to raise_error('No available bikes')
  end
  it 'raises exception if attempted docking more bikes that capable' do
    1..DOCK_CAPACITY.times { subject.dock_bike(Bike.new) }
    expect { subject.dock_bike(Bike.new) }.to raise_error('Max Capacity reached already')
  end
  it 'initialised docking station holds default value' do
    expect(subject.dock_capacity).to eq(25)
  end
end