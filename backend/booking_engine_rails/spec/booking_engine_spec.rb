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
        expect(Time.parse(subject[:starts_at])).to eq(Time.new(2020, 2, 1, 6, 0, 0, "-05:00"))
      end
    end
  end

  describe ".create" do
    subject { described_class.create attributes }

    let(:attributes) do
      {         
        starts_at: "2020-02-01T06:30:00.00-05:00",
        player: "Ken"
      }
    end

    it "adds a reservation" do
      is_expected.to include(
        id: 4,
        player: "Ken"
      )
    end
  end

  describe ".valid?" do 
    context "validate_starts_at" do 
      it "fails validation on Anna, 2020-02-01T06:15:00.000-05:00" do
        expect { described_class.validate_starts_at?({ player: "Ken", starts_at: "2020-02-01T06:15:00.000-05:00"}) }.to raise_error(StandardError)
      end

      it "passes validation on Anna, 2020-02-01T06:40:00.000-05:00" do
        expect(described_class.validate_starts_at?({ player: "Ken", starts_at: "2020-02-01T06:40:00.000-05:00"})).to be(true)
      end
    end
    
    context "within 2 hours" do 
      it "failes validation on Anna, 2020-02-01T06:30:00.000-05:00" do
        expect { described_class.validate_member_interval?({ player: "Anna", starts_at: "2020-02-01T06:30:00.000-05:00"}) }.to raise_error(StandardError)
      end

      it "passes validation on Anna, 2020-02-01T08:30:00.000-05:00" do
        expect(described_class.validate_member_interval?({ player: "Anna", starts_at: "2020-02-01T08:30:00.000-05:00"})).to be(true)
      end
    end    
  end

  describe ".page" do 
    it "should return page 1" do 
      reservations = described_class.page

      expect(reservations.size).to be(2)
      expect(reservations[0][:id]).to be(1)
      expect(reservations[1][:id]).to be(2)
    end

    it "should return page 2" do 
      reservations = described_class.page(2)

      expect(reservations.size).to be(2)
      expect(reservations[0][:id]).to be(3)
      expect(reservations[1][:id]).to be(4)
    end

    it "should return page 1 with 4 entries" do 
      reservations = described_class.page(1, 4)

      expect(reservations.size).to be(4)
      expect(reservations[0][:id]).to be(1)
      expect(reservations[1][:id]).to be(2)
      expect(reservations[2][:id]).to be(3)
      expect(reservations[3][:id]).to be(4)
    end

  end
end
