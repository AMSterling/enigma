class Key
  attr_reader :random_nums

  def initialize(random_nums = key_generator)
    @random_nums = random_nums
  end

  def first_shift(key)
    @random_nums.chars[0..1].join.to_i
  end

  def second_shift(key)
    @random_nums.chars[1..2].join.to_i
  end

  def third_shift(key)
    @random_nums.chars[2..3].join.to_i
  end

  def fourth_shift(key)
    @random_nums.chars[3..4].join.to_i
  end

  def key_generator
    rand.to_s[2..6]
  end
end
