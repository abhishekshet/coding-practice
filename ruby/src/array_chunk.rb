require 'benchmark'

class ArrayChunk

  class << self

    def chunk arry, size
      result = []
      while arry.length > 0
        result << arry.shift(size)
      end
      result
    end


    def benchmark_for arry, size
      Benchmark.measure { chunk(arry, size) }
    end

  end

end