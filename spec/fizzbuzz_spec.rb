require 'spec_helper'

describe 'FizzBuzz' do
  describe '#say' do
    subject(:fizzbuzz) { FizzBuzz.new }
    it 'args 1' do
      expect(fizzbuzz.say 1).to eq 1
    end

    it 'args 100' do
      expect(fizzbuzz.say 100).to eq 'Buzz'
    end

    context 'args  divisible by three' do
      it 'return Fizz' do
        expect(fizzbuzz.say 3).to eq 'Fizz'
        expect(fizzbuzz.say 6).to eq 'Fizz'
        expect(fizzbuzz.say 9).to eq 'Fizz'
      end
    end

    context 'args divisible by five' do
      it 'return Buzz' do
        expect(fizzbuzz.say 5).to eq 'Buzz'
        expect(fizzbuzz.say 10).to eq 'Buzz'
      end
    end
  end
end
