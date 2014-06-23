require 'spec_helper'

describe 'FizzBuzz' do
  describe '#say' do
    context 'Standard FizzBuzz' do
      subject(:fizzbuzz) { FizzBuzz.new }
      let(:format) do
        {3 => 'Fizz', 5 => 'Buzz'}
      end

      it 'args 1' do
        expect(fizzbuzz.say 1, format).to eq 1
      end

      it 'args 100' do
        expect(fizzbuzz.say 100, format).to eq 'Buzz'
      end

      context 'args divisible by three' do
        it 'return Fizz' do
          expect(fizzbuzz.say 3, format).to eq 'Fizz'
          expect(fizzbuzz.say 6, format).to eq 'Fizz'
          expect(fizzbuzz.say 9, format).to eq 'Fizz'
        end
      end

      context 'args divisible by five' do
        it 'return Buzz' do
          expect(fizzbuzz.say 5, format).to eq 'Buzz'
          expect(fizzbuzz.say 10, format).to eq 'Buzz'
        end
      end

      context 'args divisible by three and five' do
        it 'return FizzBuzz' do
          expect(fizzbuzz.say 15, format).to eq 'FizzBuzz'
          expect(fizzbuzz.say 30, format).to eq 'FizzBuzz'
          expect(fizzbuzz.say 45, format).to eq 'FizzBuzz'
        end
      end
    end
  end
end
