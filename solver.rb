# frozen_string_literal: true

# Solver
#  Solver.factorial(5) => 120
#    @params [Integer] number
#    @return [Integer]
#  Solver.reverse('hello') => 'olleh'
#    @params [String] string
#    @return [String]
#  Solver.fizzbuzz(15) => 'FizzBuzz'
#    @params [Integer] number
#    @return [String]
class Solver
  def self.factorial(num)
    raise ArgumentError if num.negative?
    return 1 if num.zero? || num == 1

    num * factorial(num - 1)
  end

  def self.reverse(str)
    str.reverse
  end

  def self.fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'FizzBuzz'
    elsif (num % 3).zero?
      'Fizz'
    elsif (num % 5).zero?
      'Buzz'
    else
      num.to_s
    end
  end
end
