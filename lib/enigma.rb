require 'Date'
require 'pry'
class Enigma
  attr_reader :message, :random_num, :date

  def initialize(message, random_num, date)
    @message = message
    @random_num = random_num
    @date = Date.today.strftime('%d%m%y')
  end
end
