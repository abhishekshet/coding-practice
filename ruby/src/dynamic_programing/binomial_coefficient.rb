require 'benchmark'
class BinomialCoefficient
    class << self
        def outcomes (n, k)
            [0, n].include?(k) ? 1 :(outcomes(n-1, k-1) + outcomes(n-1, k ))    
        end 

        def benchmark_for(n,k)
            puts Benchmark.measure {outcomes(n, k)}
        end 
    end 
end 