require_relative '../booking_engine'

class MemberIntervalValidator
  def self.valid?(reservation) 
    starts_at = Time.parse(reservation[:starts_at])

    BookingEngine.user_reservations(reservation[:player]).each do |r|    
      time = Time.parse(r[:starts_at])
      diff = (time - starts_at).abs

      raise StandardError.new("Player cannot have two reservations within two hours") if diff < TWO_HOURS
    end

    true
  end
end