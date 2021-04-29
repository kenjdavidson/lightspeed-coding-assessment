# frozen_string_literal: true

require "spec_helper"

RSpec.describe BookingEngine do
  subject(:booking_engine) { described_class.new }

  it "initializes an instance" do
    is_expected.to be_a(BookingEngine)
  end

  describe ".all" do
    subject { described_class.all }

    it "returns all reservations" do
      is_expected.to have_attributes(size: 3)
    end

    describe "the first reservation" do
      subject { described_class.all.first }

      it "has an id and name" do
        is_expected.to include(
          id: 1,
          player: "Anna"
        )
      end

      it "parses the start time" do
        expect(Time.parse(subject[:starts_at])).to eq(Time.new(2020, 2, 1, 6))
      end
    end
  end

  xdescribe ".create" do
    subject { described_class.create attributes }

    let(:attributes) {}

    it "adds a reservation"
  end
end
