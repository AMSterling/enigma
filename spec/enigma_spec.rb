require 'Date'
require './lib/enigma'
require './lib/key'
require './lib/offset'

RSpec.describe Enigma do
  it 'exists' do
    enigma = Enigma.new('hello world', '02715', '040895')

    expect(enigma).to be_a Enigma
  end

  it 'is the decrypted message' do
    enigma = Enigma.new('hello world', '02715', '040895')

    expect(enigma.message).to eq('hello world')
  end

  it 'is a random five digit number as a string' do
    enigma = Enigma.new('hello world', '02715', '040895')

    expect(enigma.key).to be_a Key
    expect(enigma.key.random_nums).to eq('02715')
  end
  it 'is the current date as a string' do
    enigma = Enigma.new('hello world', '02715', '040895')

    expect(enigma.date).to be_a Offset
    expect(enigma.date.date).to eq('040895')
  end

  it 'has a character_set' do
    enigma = Enigma.new('hello world', '02715', '040895')

    expect(enigma.character_set.count).to eq(27)
    expect(enigma.character_set).to eq(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "])
  end

  it 'checks if punctuation/spaces are not included in character set' do
    enigma = Enigma.new('hello world!', '02715', '040895')

    expect(enigma.punctuation(' ')).to be false
    expect(enigma.punctuation('!')).to be true
  end

  it 'matches the first character to it index counterpart' do
    enigma = Enigma.new('hello world', '02715', '040895')

    expect(enigma.start_position('h')).to eq(7)
  end

  it 'is the A, B, C or D shift' do
    enigma = Enigma.new('hello world', '02715', '040895')

    expect(enigma.shift_a('h')).to eq(10)
    expect(enigma.shift_b('e')).to eq(4)
    expect(enigma.shift_c('l')).to eq(3)
    expect(enigma.shift_d('l')).to eq(4)
    expect(enigma.shift_a('o')).to eq(17)
    expect(enigma.shift_b(' ')).to eq(26)
    expect(enigma.shift_c('w')).to eq(14)
    expect(enigma.shift_d('o')).to eq(7)
    expect(enigma.shift_a('r')).to eq(20)
    expect(enigma.shift_b('l')).to eq(11)
    expect(enigma.shift_c('d')).to eq(22)
  end

  it 'applies shift method to each character of the message' do
    enigma = Enigma.new('hello world', '02715', '040895')

    expect(enigma.shift('hello world')).to eq('keder ohulw')
  end

  it 'returns the encryption as a hash' do
    enigma = Enigma.new('hello world', '02715', '040895')

    enigma.shift('hello world')

    expect(enigma.encrypt).to eq({
                    :encryption => 'keder ohulw',
                    :key => "02715",
                    :date => "040895"
                    })
  end

  it 'is the A, B, C or D unshift' do
    enigma = Enigma.new('hello world', '02715', '040895')

    expect(enigma.unshift_a('k')).to eq(7)
    expect(enigma.unshift_b('e')).to eq(4)
    expect(enigma.unshift_c('d')).to eq(11)
    expect(enigma.unshift_d('e')).to eq(11)
    expect(enigma.unshift_a('r')).to eq(14)
    expect(enigma.unshift_b(' ')).to eq(26)
    expect(enigma.unshift_c('o')).to eq(22)
    expect(enigma.unshift_d('h')).to eq(14)
    expect(enigma.unshift_a('u')).to eq(17)
    expect(enigma.unshift_b('l')).to eq(11)
    expect(enigma.unshift_c('w')).to eq(3)
  end

  it 'applies unshift method to each character of the message' do
    enigma = Enigma.new('hello world', '02715', '040895')

    enigma.shift('hello world')
    enigma.unshift('keder ohulw')

    expect(enigma.unshift('keder ohulw')).to eq('hello world')
  end

  it 'is the decrypted hash' do
    enigma = Enigma.new('hello world', '02715', '040895')

    enigma.shift('hello world')
    enigma.unshift('keder ohulw')

    expect(enigma.decrypt).to eq({
                  :decryption => 'hello world',
                  :key => "02715",
                  :date => "040895"
                  })
  end

  it 'can encrypt enigma with current date' do
    enigma = Enigma.new('hello world', '02715')

    expect(enigma.date.date).to eq(Date.today.strftime('%d%m%y'))
  end

  it 'can encrypt enigma with a randomly generated key' do
    enigma = Enigma.new('hello world')

    expect(enigma.key).to be_a Key
    expect(enigma.date.date).to eq(Date.today.strftime('%d%m%y'))
  end

  it 'can encrypt enigma with messages from txt file' do
    enigma = Enigma.new

    expect(enigma.message).to eq('better than black thursday at least')
    expect(enigma.key).to be_a Key
    expect(enigma.date.date).to eq(Date.today.strftime('%d%m%y'))
  end
end
