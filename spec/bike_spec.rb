require_relative '../lib/bike.rb'
subject = Bike.new
describe Bike do
  it 'bike should report working' do
    expect(subject).to respond_to :working?
  end
  it 'report broken should return broken as true'
  subject.report_broken
  expect(subject.broken?).to be_broken
end
