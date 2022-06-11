require 'Date'
require 'pry'
class Enigma
  attr_reader :message, :key, :date

  def initialize(message, key, date)
    @message = message
    @key = key
    @date = date
    # @date = Date.today.strftime('%d%m%y')
  end
end
