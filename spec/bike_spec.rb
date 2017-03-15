require './lib/bike.rb'

describe Bike do
it 'should respond_to "working?" function.' do
  expect(subject).to respond_to :working?
end
  #it { is_expected.to respond_to :working? }
end
