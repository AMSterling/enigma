require './lib/offset'
require './lib/enigma'
require 'Date'

RSpec.describe Offset do
  it 'exists' do
    date = Offset.new('040895')

    expect(date).to be_a Offset
  end

  it 'has six digit format' do
    date = Offset.new('040895')

    expect(date.date).to eq('040895')
    expect(date.date.length).to eq(6)
  end

  it 'converts the date format from string to an integer' do
    date = Offset.new('040895')

    expect(date.date.to_i).to eq(40895)
  end

  it 'is the square of the date as an integer' do
    date = Offset.new('040895')

    expect(date.squared_date).to eq(1_672_401_025)
  end

  it 'takes the last 4 digits of the sqared date as integer' do
    date = Offset.new('040895')

    expect(date.last_4_of_date_squared).to eq([1, 0, 2, 5])
    expect(date.last_4_of_date_squared.count).to eq(4)
  end
end
