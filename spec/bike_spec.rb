require_relative '../lib/bike.rb'
describe Bike do
  it 'bike should report working' do
    expect(subject).to respond_to :working?
  end
  # it 'bike should dock' do
  #   expect(subject.docked).to eq(true)
  # end
end
