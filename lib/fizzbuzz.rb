#!/usr/bin/env ruby

class FizzBuzz
  def say(number, format)
    result = ''

    format.each do |key, value|
      result += value.to_s if (number % key) == 0
    end

    if result == ''
      number
    else
      result
    end
  end
end

def fizzbuzz(format)
  1.upto(100) do |number|
    puts FizzBuzz.new.say number, format
  end
end

fizzbuzz({3 => 'Foo', 7 => 'Bar', 11 => 'Baz'})
