require 'json'
require_relative 'tee_time'
require_relative 'reservation'

class Repository 
  def self.data
    @data ||= JSON.parse(File.read("#{__dir__}/data/input.json"))
  end

  def self.tee_times
    @tee_times ||= TeeTime.deserialize(self.data['tee_times'])
  end

  def self.reservations 
    @reservations ||= Reservation.deserialize(self.data['reservations'], self.tee_times)
  end

  def self.build_output 
    { 
      id: reso.id, 
      price: reso.total_price.to_i,
      fee: reso.calulate_fees.to_i
    }
  end
end