# Reservations contain information regarding who (how many at a basic level) and when have 
# booked a tee time
#
require 'time'
require_relative 'pricing_engine'

class Reservation 
  attr_reader :id, :tee_time, :number_of_golfers, :reserved_at

  def initialize(id, tee_time, number_of_golfers, reserved_at) 
    @id = id
    @tee_time = tee_time
    @number_of_golfers = number_of_golfers
    @reserved_at = reserved_at
  end

  # Not exactly deserializing, would be better to parse JSON straight to class
  def self.deserialize(reservations_map, tee_times)
    reservations = {}
    reservations_map.each do |r|
      reservations[r['id']] = Reservation.new(r['id'], tee_times[r['tee_time_id']], r['number_of_golfers'], Time.parse(r['reserved_at']))
    end
    reservations
  end

  def total_price 
    PricingEngine.calculate_price(self)
  end

  # Converts the provided Time to local and counts the days between, exclusive.  This 
  # In general, I can see a whole wack of ways to do this based on the requirements, they would
  # require more customizable min/max values with assumptions on not being able to book X 
  # days ahead.
  # 
  def booked_before_teetime
    tee_time_local = local_date_no_time(tee_time.starts_at)
    reserved_local = local_date_no_time(reserved_at)
    days_exclusive = (tee_time_local - reserved_local) / (24.0*60*60) - 1
    [0, days_exclusive].max
  end

  private 

  def local_date_no_time(time)
    time_local = time.getlocal 
    Time.new(time_local.year, time_local.month, time_local.day)
  end
end