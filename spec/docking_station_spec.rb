require_relative '../lib/docking_station.rb'
describe DockingStation do
  it 'dokingstation should release bike' do
    expect(subject).to respond_to :release_bike
  end

  it 'release bike should return a bike object' do
    expect(subject.release_bike).to be_instance_of Bike
  end

  it 'dock should dock bike' do
    bike = subject.release_bike
    bike.dock
    expect(bike.docked?).to eq(true)
  end
  it "docked? should return docking state" do
    bike = subject.release_bike
    expect(bike.docked?).to eq(false)
  end
  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'raises exception if no bikes in dock' do
    expect { subject.bikes_unavailable }.to raise_error ('No available bikes')
  end
  it 'raises exception if attempted docking more bikes that capable' do
    expect { subject.dock_over_capacity }.to raise_error('Max Capacity reached already')
  end

  it 'dock bike with limit capacity reached should raise exception' do
    bike = subject.release_bike
    # subject.dock_bike(bike)
    expect (subject).to respond_to :dock_over_capacity
  end

end