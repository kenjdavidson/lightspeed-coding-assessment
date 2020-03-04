# frozen_string_literal: true

require 'spec_helper'

RSpec.describe BookingEngine do
  subject(:booking_engine) { described_class.new }

  it 'initializes an instance' do
    is_expected.to be_a(BookingEngine)
  end
end
