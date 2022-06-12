require 'Date'
require './lib/enigma'
require './lib/key'
require './lib/offset'

RSpec.describe Enigma do
  it 'exists' do
    # enigma = Enigma.new('message', '82648', Date.today)
    enigma = Enigma.new('hello world', '02715', '040895')

    expect(enigma).to be_a Enigma
  end

  it 'is the decrypted message' do
    # enigma = Enigma.new('message', '82648', Date.today)
    enigma = Enigma.new('hello world', '02715', '040895')
    # message = 'something something darkside..end..'

    expect(enigma.message).to eq('hello world')
  end

  it 'is a random five digit number as a string' do
    # enigma = Enigma.new('message', '82648', Date.today)
    enigma = Enigma.new('hello world', '02715', '040895')
    # message = 'something something darkside..end..'

    # expect(enigma.key).to eq('82648')
    expect(enigma.key).to be_a Key
  end
  it 'is the current date as a string' do
    # enigma1 = Enigma.new('message', '82648', Date.today)
    enigma = Enigma.new('hello world', '02715', '040895')
    # message = 'something something darkside..end..'

    expect(enigma.date).to be_a Offset
  end

  it 'has a character_set' do
    enigma = Enigma.new('hello world', '02715', '040895')

    expect(enigma.character_set.count).to eq(27)
    expect(enigma.character_set).to eq(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "])
  end

  it 'matches the first character to it index counterpart' do
    enigma = Enigma.new('hello world', '02715', '040895')

    expect(enigma.start_position('h')).to eq(7)
  end

  it 'is the A shift' do
    enigma = Enigma.new('hello world', '02715', '040895')

    expect(enigma.shift_a('h')).to eq(10)
    expect(enigma.shift_b('e')).to eq(4)
    expect(enigma.shift_c('l')).to eq(3)
    expect(enigma.shift_d('l')).to eq(4)
    expect(enigma.shift_a('o')).to eq(17)
  end

  xit 'applies shift method to each character of the message' do
    enigma = Enigma.new('hello world', '02715', '040895')

    expect(enigma.shift).to be_a String
  end

  xit 'returns the encryption as a hash' do
    enigma = Enigma.new('hello world', '02715', '040895')

    expect(enigma.encrypt).to eq({
            encryption: "keder ohulw",
            key: "02715",
            date: "040895"
            })
  end
end
