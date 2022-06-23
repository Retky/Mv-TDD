require './solver'

describe Solver do
  describe '#factorial' do
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
end
