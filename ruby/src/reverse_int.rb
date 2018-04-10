require 'benchmark'

class ReverseInt
  class << self
    def reverse_int number
      isNegative = (number < 0) ? true : false
      number = isNegative ? (-number) : number
      return number if (number % 10) == number
      reversed_number = 0

      while(number != 0) do
        digit = number % 10
        reversed_number = (reversed_number * 10) + digit
        number = number/10
      end

      return isNegative ?  -reversed_number : reversed_number

    end

    def benhmark_for number
      puts Benchmark.measure { reverse_int(number) }
    end

  end
end