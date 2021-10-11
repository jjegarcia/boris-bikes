require_relative '../lib/docking_station.rb'
# expect(track_motivation(5)).to eq "Motivation stored!"
describe DockingStation do
  it 'dokingstation should release bike' do
    expect(subject).to respond_to :release_bike
  end

    it 'release bike should return a bike object' do
      expect(subject.release_bike).to be_instance_of Bike
      # expect(Todo.new("get milk")).to be_instance_of Todo
    end
end
