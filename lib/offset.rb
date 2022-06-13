class Offset
  attr_reader :date

  def initialize(date = Date.today.strftime('%d%m%y'))
    @date = date
  end

  def squared_date
    @date.to_i ** 2
  end

  def last_4
    squared_date.digits[0..3].reverse
  end
end
