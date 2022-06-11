require './lib/enigma'
require 'Date'

RSpec.describe Enigma do
  it 'exists' do
    enigma = Enigma.new('message', 82648, Date.today)
    message = 'something something darkside..end..'

    expect(enigma).to be_a Enigma
  end

  it 'is the decrypted message' do
    enigma = Enigma.new('message', 82648, Date.today)
    message = 'something something darkside..end..'

    expect(enigma.message).to eq('message')
  end

  it 'is a random five digit number' do
    enigma = Enigma.new('message', 82648, Date.today)
    message = 'something something darkside..end..'

    expect(enigma.random_num).to eq(82648)
  end

  it 'is the current date' do
    enigma = Enigma.new('message', 82648, Date.today)
    message = 'something something darkside..end..'

    expect(enigma.date).to eq Date.today
  end
end
