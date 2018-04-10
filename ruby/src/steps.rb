require 'benchmark'

class Steps

  class << self

    def print_steps number
      number.times do |ele|
        result = ""
        (ele+1).times {result << "#"}
        puts result
      end
    end

    def benchmark_for number
      Benchmark.measure { benchmark_for number }
    end

  end

end