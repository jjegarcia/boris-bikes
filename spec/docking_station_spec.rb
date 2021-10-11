require_relative '../lib/docking_station.rb'
# expect(track_motivation(5)).to eq "Motivation stored!"
describe DockingStation do
  it 'dokingstation should release bike' do
    expect(subject).to respond_to :release_bike
  end

end
