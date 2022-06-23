# frozen_string_literal: true

# Solver
#  Solver.factorial(5) => 120
#    @params [Integer] number
#    @return [Integer]
class Solver
  def self.factorial(num)
    raise ArgumentError if num.negative?
    return 1 if num.zero? || num == 1

    num * factorial(num - 1)
  end

  def self.reverse(str)
    str.reverse
  end 
end
