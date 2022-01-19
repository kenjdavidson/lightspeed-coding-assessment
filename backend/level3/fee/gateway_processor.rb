require_relative 'fee'
require_relative 'processor'

module Fee
  # Abstract/Interface for processing fees.
  #
  class GatewayProcessor < Processor
    attr_reader :percentage, :additional

    def initialize(percentage, additional = 0)
      @percentage = percentage == 0 ? 0 : percentage/100
      @additional = additional
    end

    # Provides processing for a reservation during fee calculation.  The current 
    # calculated fee is required as later fees may depend on prior calculations.
    #
    def process(reservation, fees = {})
      fee = (reservation.total_price * percentage) + additional
      Fee.new(:payment_gateway_fee, fee.to_f.round(2))
    end
  end
end