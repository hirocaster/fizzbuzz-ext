class FizzBuzz
  def say number
    return 'FizzBuzz' if (fizz? number) && (buzz? number)
    return 'Fizz' if fizz? number
    return 'Buzz' if buzz? number
    number
  end

  private

  def fizz? number
    (number % 3) == 0
  end

  def buzz? number
    (number % 5) == 0
  end
end
