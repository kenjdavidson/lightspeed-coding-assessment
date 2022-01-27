# frozen_string_literal: true

require "json"
require "time"
require_relative "reservation"

class BookingEngine
  TWO_HOURS = (60 * 60 * 2)

  def self.all
    @all ||= JSON.parse(
      File.read("#{__dir__}/reservations.json"),
      symbolize_names: true
    )[:reservations]
  end

  def self.page(page = 1, size = 2) 
    page_start = (page-1) * size    
    self.all[page_start...page_start+size]
  end

  def self.user_reservations(player_id)
    self.all.filter { |r| r[:player] == player_id}
  end

  def self.create(attributes)
    id = (self.all.last[:id] || 0) + 1
    self.all << attributes.merge(id: id)
    self.all.last
  end

  def self.valid?(reservation)
    self.validate_starts_at?(reservation)
    self.validate_member_interval?(reservation)
  end

  # Refactor out to MemberIntervalValidator
  def self.validate_starts_at?(reservation)
    starts_at = Time.parse(reservation[:starts_at])
    
    raise StandardError.new("Reservation must be on the 10s") unless (starts_at.min % 10) == 0
    
    true
  end

  # Refactor out to ReservationIntervalValidator
  def self.validate_member_interval?(reservation) 
    starts_at = Time.parse(reservation[:starts_at])

    self.user_reservations(reservation[:player]).each do |r|    
      time = Time.parse(r[:starts_at])
      diff = (time - starts_at).abs

      raise StandardError.new("Player cannot have two reservations within two hours") if diff < TWO_HOURS
    end

    true
  end
end
