
module Fee
  class ReservationFees
    attr_reader :reservation, :price, :fee

    def initialize(reservation) 
      @reservation = reservation 
      @price = reservation.total_price
      @fees = reservation.fees
    end

    # Not sure if this is best practice, or better to use an added library like Representable
    # which breaks the JSON/XML logic out of the class (generally I'd lean the latter).
    def to_json(*args)
      {
        id: reservation.id,
        price: @price.round(0),
        fee: @fees.inject(Hash.new) do |hash, f|  
          hash[f.name] = f.amount 
          hash
        end
      }.to_json(*args)
    end
  end
end