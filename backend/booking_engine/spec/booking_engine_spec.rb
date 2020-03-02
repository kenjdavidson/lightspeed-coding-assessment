#frozen_string_literal: true

require 'spec_helper'
require 'booking_engine'

RSpec.describe BookingEngine, type: :model do
  subject do
    described_class.new(booking_engine)
  end

  let(:booking_engine) { BookingEngine.new }

  it 'initializes module' do
    expect(booking_engine.class).to eq(BookingEngine)
  end
end
