require_relative 'gateway_processor'
require_relative 'chronogolf_processor'

module Fee
  class FeeEngine
    @processors = [
        GatewayProcessor.new(1.9, 0.30),
        ChronogolfProcessor.new(3.0)
      ]

    # Processes a Reservation calculating all of the applicable fees.
    # At this point it's just returning a Hash.  Normally I would expect to return a 
    # List/Array of Fee objects, but in the example output the "fee" is a Hash.  This would
    # be easy enough to change solely for output, but unsure how far to go with the
    # example 
    #
    def self.process(reservation)
      processors.inject([]) { |f, p| f << p.process(reservation, f)}
    end

    private 

    def self.processors 
      @processors
    end
  end
end