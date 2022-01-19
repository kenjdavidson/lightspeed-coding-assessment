module Fee
  # Abstract/Interface for processing fees.
  #
  class Processor
    # Provides processing for a reservation during fee calculation.  The current 
    # calculated fee is required as later fees may depend on prior calculations.
    #
    def process(reservation, fees = {})
      return fees
    end
  end
end