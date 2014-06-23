require 'spec_helper'

describe 'FizzBuzz' do
  subject(:fizzbuzz) { FizzBuzz.new }

  describe '#say' do
    context 'when Standard FizzBuzz' do
      let(:format) do
        {3 => 'Fizz', 5 => 'Buzz'}
      end

      it 'args 1' do
        expect(fizzbuzz.say 1, format).to eq 1
      end

      it 'args 100' do
        expect(fizzbuzz.say 100, format).to eq 'Buzz'
      end

      context 'when args divisible by three' do
        it 'return Fizz' do
          expect(fizzbuzz.say 3, format).to eq 'Fizz'
          expect(fizzbuzz.say 6, format).to eq 'Fizz'
          expect(fizzbuzz.say 9, format).to eq 'Fizz'
        end
      end

      context 'when args divisible by five' do
        it 'return Buzz' do
          expect(fizzbuzz.say 5, format).to eq 'Buzz'
          expect(fizzbuzz.say 10, format).to eq 'Buzz'
        end
      end

      context 'when args divisible by three and five' do
        it 'return FizzBuzz' do
          expect(fizzbuzz.say 15, format).to eq 'FizzBuzz'
          expect(fizzbuzz.say 30, format).to eq 'FizzBuzz'
          expect(fizzbuzz.say 45, format).to eq 'FizzBuzz'
        end
      end
    end

    context 'when Extend FizzBuzz format' do
      let(:format) do
        {3 => 'Foo', 7 => 'Bar', 11 => 'Baz'}
      end

      it 'return Foo' do
        expect(fizzbuzz.say 3, format).to eq 'Foo'
        expect(fizzbuzz.say 6, format).to eq 'Foo'
      end

      it 'return Bar' do
        expect(fizzbuzz.say 7, format).to eq 'Bar'
        expect(fizzbuzz.say 14, format).to eq 'Bar'
      end

      it 'return Baz' do
        expect(fizzbuzz.say 11, format).to eq 'Baz'
        expect(fizzbuzz.say 22, format).to eq 'Baz'
      end

      it 'return FooBar' do
        expect(fizzbuzz.say 21, format).to eq 'FooBar'
      end

      it 'return BarBaz' do
        expect(fizzbuzz.say 77, format).to eq 'BarBaz'
      end

      it 'return BarBaz' do
        expect(fizzbuzz.say 33, format).to eq 'FooBaz'
        expect(fizzbuzz.say 99, format).to eq 'FooBaz'
      end
    end
  end
end
