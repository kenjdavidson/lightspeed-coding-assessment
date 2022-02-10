#frozen_string_literal: true

class ChuckNorris
  def initialize(string_io)
    @string_io = string_io
  end

  def say(message) 
    bits = to_bits(message)
    @string_io << say_it(bits)
  end

  def say(message)
    bit_pairs = message.split(" ")

  end

  def say_it(bits)
    value = []
    start_idx, start_bit = 0, bits[0]
    for i in 1..bits.length do 
      bit = bits[i]

      if bit != start_bit
        count = i - start_idx
        value << "#{say_bit(start_bit)} #{say_count(count)}"
        start_idx, start_bit = i, bit
      end
    end

    value.join(" ")
  end

  def to_bits(message)
    message.bytes
      .map { |b| b.to_s(2) }
      .join
  end

  def say_bit(bit) 
    "1" == bit ? "0" : "00"
  end

  def say_count(count)
    "0" * count
  end

  def read_it(bit_array)    
    for i in (0..bit_array.lenght).step(2) do

    end
  end

  def read_bit(bit)
    "0" == bit ? "1" : "0"
  end

  def read_count(bit, count) 
    bit * count
  end
end
