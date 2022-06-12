require './lib/key'
require './lib/enigma'

RSpec.describe Key do
  it 'exists' do
    key = Key.new('02715')

    expect(key).to be_a Key
    expect(key.random_nums).to eq('02715')
    expect(key.random_nums.length).to eq(5)
  end

  it 'extracts the first two characters to return the first integer' do
    key = Key.new('02715')

    expect(key.first_shift('02715')).to eq(2)
  end

  it 'extracts the second and third characters to return the second integer' do
    key = Key.new('02715')

    expect(key.second_shift('02715')).to eq(27)
  end

  it 'extracts the third and fourth to return the third integer' do
    key = Key.new('02715')

    expect(key.third_shift('02715')).to eq(71)
  end

  it 'extracts the fourth and fifth characters to return the fourth integer' do
    key = Key.new('02715')

    expect(key.fourth_shift('02715')).to eq(15)
  end

  it 'can generate a random 5-digit key' do
    key = Key.new('02715')

    expect(key.key_generator).to be_a String
    expect(key.key_generator.length).to eq(5)
  end
end
