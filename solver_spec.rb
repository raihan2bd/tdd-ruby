require_relative './solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  describe '#new' do
    it 'returns a Solver object' do
      expect(@solver).to be_an_instance_of Solver
    end
  end

  describe '#factorial' do
    it 'returns the factorial of that number' do
      expect(@solver.factorial(6)).to eq(720)
    end

    it 'returns 1 if the factorial method argument is 0' do
      expect(@solver.factorial(0)).to eq(1)
    end

    it 'raise an  afgument error' do
      expect { @solver.factorial(-1) }.to raise_error(ArgumentError, 'Input must be a non-negative number!')
    end
  end

  describe '#reverse' do
    it 'should reverse the word' do
      expect(@solver.reverse('hello')).to eq('olleh')
    end
  end
end
