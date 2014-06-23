require 'spec_helper'

describe 'FizzBuzz' do
  describe '#say' do
    subject(:fizzbuzz) { FizzBuzz.new }
    it 'args 1' do
      expect(fizzbuzz.say 1).to eq 1
    end
  end
end
