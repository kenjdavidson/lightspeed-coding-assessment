module Pricing
  class Calculator
    def apply(reservation)
      reservation.number_of_golfers * reservation.tee_time.price_per_golfer
    end
  end
end 