#frozen_string_literal: true

require 'spec_helper'
require 'chuck_norris'

RSpec.describe ChuckNorris, type: :model do

  subject do
    described_class.new(chuck_norris_output)
  end

  let(:chuck_norris_output) { StringIO.new }

  it 'says Hi' do
    subject.say('Hi')
    expect(chuck_norris_output.string.split("\n")).to eq [
      '0 0 00 00 0 0 00 000',
      '0 00 00 0 0 0 00 00 0 0'
    ]
  end

end
