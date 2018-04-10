require 'benchmark'
class MaxChar

  class << self

    def max_char str
      count = {}
      max = str[0]
      str.split("").each do |c|
        count.has_key?(c) ? count[c] += 1 : count[c] = 1
        max = (count[c] > count[max]) ? c : max
      end
      max
    end

    def benchmark_for str
      Benchmark.measure {max_char(str)}
    end

  end
end