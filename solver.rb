class Solver
  def factorial(num)
    raise ArgumentError, 'Input must be a non-negative number!' unless num.is_a?(Integer) && num >= 0

    result = 1
    (1..num).each do |i|
      result *= i
    end

    result
  end

  def reverse(word)
    word.reverse
  end
end
