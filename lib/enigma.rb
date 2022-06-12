require 'Date'
require_relative 'de_encryptable'

class Enigma
  include DeEncryptable
  attr_reader :message, :key, :date, :character_set

  def initialize(message, key, date)
    @message = message
    @key = Key.new(key)
    @date = Offset.new(date)
    # @date = Date.today.strftime('%d%m%y')
    @character_set = ("a".."z").to_a << " "
  end
end
