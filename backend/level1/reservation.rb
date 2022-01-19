# A reservation provides a method for locking in a number of players to a specific tee time.  For this
# reason I would assume that a tee_time is required for a reservation to exist.
#
class Reservation 
  attr_reader :id, :tee_time, :number_of_golfers

  def initialize(id, tee_time, number_of_golfers) 
    @id = id
    @tee_time = tee_time
    @number_of_golfers = number_of_golfers
  end

  # Not exactly deserializing, would be better to parse JSON straight to class
  def self.deserialize(reservations_map, tee_times)
    reservations = {}
    reservations_map.each do |r|
      reservations[r['id']] = Reservation.new(r['id'], tee_times[r['tee_time_id']], r['number_of_golfers'])
    end
    reservations
  end

  def total_price 
    @number_of_golfers * @tee_time.price_per_golfer
  end
end