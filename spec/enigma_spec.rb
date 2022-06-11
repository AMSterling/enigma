require 'spec_helper'
require './lib/enigma'

RSpec.describe Enigma do
  it 'exists' do
    enigma = Enigma.new('message', '82648', Date.today)
    enigma = Enigma.new('message', '02715', '040895')
    message = 'something something darkside..end..'
    message = 'hello world'

    expect(enigma).to be_a Enigma
  end

  it 'is the decrypted message' do
    enigma = Enigma.new('message', '82648', Date.today)
    enigma = Enigma.new('message', '02715', '040895')
    message = 'something something darkside..end..'
    message = 'hello world'

    expect(enigma.message).to eq('message')
  end

  it 'is a random five digit number' do
    enigma = Enigma.new('message', '82648', Date.today)
    enigma = Enigma.new('message', '02715', '040895')
    message = 'something something darkside..end..'
    message = 'hello world'

    expect(enigma.key).to eq('82648')
    expect(enigma.key).to eq('02715')
  end
  it 'is the current date' do
    enigma = Enigma.new('message', '82648', Date.today)
    enigma = Enigma.new('message', '02715', '040895')
    message = 'something something darkside..end..'
    message = 'hello world'

    expect(enigma.date).to eq('040895')
  end
end
