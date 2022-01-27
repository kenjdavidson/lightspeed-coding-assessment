#!/bin/env ruby 

require 'json'
require_relative 'tee_time'
require_relative 'reservation'

# Input data has structure
# tee_times[]:
#	- id: integer
#	- starts_at: time
#	- price_per_golfer: integer 
# reservations[]:
# 	- id: integer 
# 	- tee_time_id: integer (tee_times)
# 	- number_of_golfers: integer \
path = File.expand_path(File.dirname(File.dirname(__FILE__)))
input_data = JSON.parse(File.read("#{path}/data/input.json"))

tee_times = TeeTime.deserialize(input_data['tee_times'])
reservations = Reservation.deserialize(input_data['reservations'], tee_times)
reservation_prices = reservations.map { |id,reso| { id: reso.id, price: reso.total_price.to_i } }

output_data = {
  reservations: reservation_prices
}

File.write("#{path}/data/output1.json", JSON.pretty_generate(output_data))