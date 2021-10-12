require_relative '../lib/docking_station.rb'
describe DockingStation do
  it 'dokingstation should release bike' do
    expect(subject).to respond_to :release_bike
  end

  it 'release bike should return a bike object' do
    expect(subject.release_bike).to be_instance_of Bike
  end
end
