class FizzBuzz
  def say number
    return 'Fizz' if fizz? number
    number
  end

  private

  def fizz? number
    (number % 3) == 0
  end
end
