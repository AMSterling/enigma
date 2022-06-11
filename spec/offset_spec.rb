require './lib/offset'
require 'spec_helper'

RSpec.describe Offset do
  it 'exists' do
    date = Offset.new

    expect(date).to be_a Offset
  end
end
