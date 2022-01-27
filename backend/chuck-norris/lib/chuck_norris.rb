#frozen_string_literal: true

class ChuckNorris
  def initialize(string_io)
    @string_io = string_io
  end

  def say(message) 
    bits = to_bits(message)
    @string_io << chuck_it(bits)
  end

  def chuck_it(bits)
    value = []
    start_idx, start_bit = 0, bits[0]
    for i in 1..bits.length do 
      bit = bits[i]

      if bit != start_bit
        count = i - start_idx
        value << "#{bit_string(start_bit)} #{bit_count(count)}"
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

  def bit_string(bit) 
    "1" == bit ? "0" : "00"
  end

  def bit_count(count)
    "0" * count
  end
end
