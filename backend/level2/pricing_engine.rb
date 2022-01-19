require_relative 'reservation_date_pricing'

# Provides price calculation for a provided Reservation
#
class PricingEngine

  @discounts_by_date = [
    ReservationDatePricing.new(7, -20),
    ReservationDatePricing.new(2, -10),
    ReservationDatePricing.new(1, 0),
    ReservationDatePricing.new(0, 5)  
  ]

  def self.calculate_price(reservation)  
    # reservation should never have less than 0 days ahead since you cannot book in the past
    # But we'll leave the default pricing in there just incase.
    pricing = find_discount(reservation.booked_before_teetime) || Pricing.new
    pricing.apply(reservation)
  end

  private 

  # Determines the appropriate discount.  At this point based on the provided data it's assumed
  # that you cannot book a tee time in the past, so there should be no need to provide a fallback.
  #
  def self.find_discount(days_ahead)
    @discounts_by_date.find { |d| d.days_in_advance <= days_ahead }    
  end
end
