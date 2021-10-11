require_relative '../lib/bike.rb'

# expect(track_motivation(5)).to eq "Motivation stored!"
describe Bike do
 it 'bike should report working' do
    expect(subject).to respond_to :working?
  end
end
