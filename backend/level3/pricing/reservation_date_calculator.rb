require_relative 'calculator'

module Pricing
  class ReservationDatePricing < Calculator
    attr_reader :days_in_advance, :percentage

    def initialize(days_in_advance, percentage)
      @days_in_advance = days_in_advance
      @percentage = (percentage == 0) ? 0 : percentage.abs/100.0
      @negate = (percentage == 0) ? 1 : percentage / percentage.abs
    end

    def apply(reservation) 
      price = super 
      percent_change = price * @percentage
      price + (percent_change * @negate)
    end
  end 
end