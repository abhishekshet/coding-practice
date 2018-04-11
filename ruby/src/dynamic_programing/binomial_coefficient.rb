require 'benchmark'
class BinomialCoefficient
    class << self
        def outcomes (n, k)
            count = 1
            if [0, n].include?(k)
                return 1
            else 
                return(outcomes(n-1, k-1) + outcomes(n-1, k ))    
            end 
            count 
        end 

        def benchmark_for(n,k)
            puts Benchmark.measure {outcomes(n, k)}
        end 
    end 
end 