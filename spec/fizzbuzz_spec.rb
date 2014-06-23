require 'spec_helper'

describe 'FizzBuzz' do
  describe '#say' do
    subject(:fizzbuzz) { FizzBuzz.new }
    it 'args 1' do
      expect(fizzbuzz.say 1).to eq 1
    end
    it 'args 100' do
      expect(fizzbuzz.say 100).to eq 100
    end
  end
end
