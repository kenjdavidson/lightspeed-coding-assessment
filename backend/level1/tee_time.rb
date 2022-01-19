class TeeTime 
  attr_reader :id, :starts_at, :price_per_golfer

  def initialize(id, starts_at, price_per_golfer)
    @id = id
    @starts_at = starts_at
    @price_per_golfer = price_per_golfer
  end

  # Not exactly deserializing, would be better to parse JSON straight to class
  def self.deserialize(tee_times_map)
    tee_times = {}
    tee_times_map.each do |tt| 
      tee_times[tt['id']] = TeeTime.new(tt['id'], tt['starts_at'], tt['price_per_golfer'])
    end
    tee_times
  end
end