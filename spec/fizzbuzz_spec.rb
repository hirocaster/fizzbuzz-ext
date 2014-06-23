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

    context 'args divisible by three' do
      let(:args_format) do
        { 3 => 'Fizz' }
      end
      it 'return Fizz' do
        expect(fizzbuzz.say 3, args_format).to eq 'Fizz'
        expect(fizzbuzz.say 6, args_format).to eq 'Fizz'
        expect(fizzbuzz.say 9, args_format).to eq 'Fizz'
      end
    end

    context 'args divisible by five' do
      let(:args_format) do
        { 5 => 'Buzz' }
      end
      it 'return Buzz' do
        expect(fizzbuzz.say 5, args_format).to eq 'Buzz'
        expect(fizzbuzz.say 10, args_format).to eq 'Buzz'
      end
    end

    context 'args divisible by three and five' do
      let(:args_format) do
        { 3 => 'Fizz', 5 => 'Buzz' }
      end
      it 'return FizzBuzz' do
        expect(fizzbuzz.say 15, args_format).to eq 'FizzBuzz'
        expect(fizzbuzz.say 30, args_format).to eq 'FizzBuzz'
        expect(fizzbuzz.say 45, args_format).to eq 'FizzBuzz'
      end
    end
  end
end
