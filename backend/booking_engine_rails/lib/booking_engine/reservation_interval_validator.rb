class ReservationIntervalValidator
  def self.valid?(reservation)
    starts_at = Time.parse(reservation[:starts_at])
    
    raise StandardError.new("Reservation must be on the 10s") unless (starts_at.min % 10) == 0
    
    true
  end
end