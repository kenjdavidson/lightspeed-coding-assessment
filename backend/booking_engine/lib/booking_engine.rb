# frozen_string_literal: true

require "json"
require "time"

class BookingEngine
  def self.all
    @all ||= JSON.parse(
      File.read("#{__dir__}/reservations.json"),
      symbolize_names: true
    )[:reservations]
    .last(2)
  end

  def self.create(attributes)
    # ...
  end

  def self.valid?
    # ...
  end
end
