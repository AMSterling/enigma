module DeEncryptable
  def start_position(char)
    @character_set.index(char)
  end

  def shift_a(char)
    (start_position(char) + @key.first_shift(key) + @date.last_4[0]) % @character_set.count
  end

  def shift_b(char)
    (start_position(char) + @key.second_shift(key) + @date.last_4[1]) % @character_set.count
  end

  def shift_c(char)
    (start_position(char) + @key.third_shift(key) + @date.last_4[2]) % @character_set.count
  end

  def shift_d(char)
    (start_position(char) + @key.fourth_shift(key) + @date.last_4[3]) % @character_set.count
  end

  def encrypt
    hash = { :encryption => @message,
             :key => @key.random_nums,
             :date => @date.date }
  end
end 
