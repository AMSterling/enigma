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

  def punctuation(char)
    !@character_set.include?(char.downcase)
  end

  def shift(message)
    string = ''
    position = 0
    message.downcase.each_char do |char|
      if punctuation(char)
         string += char
      else
        position += 1; position = 1 if position > 4
        index = shift_a(char) if position == 1
        index = shift_b(char) if position == 2
        index = shift_c(char) if position == 3
        index = shift_d(char) if position == 4
        string += @character_set[index]
      end
    end
     string
  end

  def encrypt
    encrypt_hash = {
            :encryption => shift(message),
            :key => @key.random_nums,
            :date => @date.date
          }
  end

  def unshift(message)
    string = ''
    position = 0
    message.downcase.each_char do |char|
      if punctuation(char)
         string += char
      else
        position += 1; position = 1 if position > 4
        index = unshift_a(char) if position == 1
        index = unshift_b(char) if position == 2
        index = unshift_c(char) if position == 3
        index = unshift_d(char) if position == 4
        string += @character_set[index]
      end
    end
     string
  end

  def decrypt
    decrypt_hash = {
            :decryption => unshift(shift(message)),
            :key => @key.random_nums,
            :date => @date.date
          }
  end
end
