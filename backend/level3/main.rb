#!/bin/env ruby 

require_relative 'repository'
require_relative 'reservation'
require_relative 'reservation_fees'

reservations = Repository.reservations
reservation_fees = reservations.map { |id,reso| Fee::ReservationFees.new(reso) }

output_data = {
  reservations: reservation_fees
}

File.write("#{__dir__}/data/output.json", JSON.pretty_generate(output_data))

