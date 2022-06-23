# frozen_string_literal: true

require './solver'

describe 'Solver::factorial' do
  it 'returns the factorial of the given number' do
    expect(Solver.factorial(5)).to eq(120)
  end

  it 'returns 1 for 0' do
    expect(Solver.factorial(0)).to eq(1)
  end

  it 'returns 1 for 1' do
    expect(Solver.factorial(1)).to eq(1)
  end

  it 'raises an error for negative numbers' do
    expect { Solver.factorial(-1) }.to raise_error(ArgumentError)
  end
end

describe 'Solver::reverse' do
  it 'returns the reverse of the given string' do
    expect(Solver.reverse('hello')).to eq('olleh')
  end

  it 'returns the reverse of the given string' do
    expect(Solver.reverse('hello world')).to eq('dlrow olleh')
  end
end

describe 'Solver::fizzbuzz' do
  it 'returns "Fizz" for multiples of 3' do
    expect(Solver.fizzbuzz(3)).to eq('Fizz')
  end

  it 'returns "Buzz" for multiples of 5' do
    expect(Solver.fizzbuzz(5)).to eq('Buzz')
  end

  it 'returns "FizzBuzz" for multiples of 3 and 5' do
    expect(Solver.fizzbuzz(15)).to eq('FizzBuzz')
  end

  it 'returns the number coherced to string for non-multiples of 3 or 5' do
    expect(Solver.fizzbuzz(1)).to eq('1')
  end
end
