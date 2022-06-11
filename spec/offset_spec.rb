require './lib/offset'
require 'Date'

RSpec.describe Offset do
  it 'exists' do
    date = Offset.new

    expect(date).to be_a Offset
  end
end
