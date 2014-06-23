#!/usr/bin/env ruby

class FizzBuzz
  def say(number, format = {3 => 'Fizz', 5 => 'Buzz'})
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

def fizzbuzz
  1.upto(100) do |number|
    puts FizzBuzz.new.say number
  end
end

fizzbuzz
