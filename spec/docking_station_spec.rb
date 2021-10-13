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

end
