require 'benchmark'

class LargestSumContiguousSubarray
    class << self

        def largest_sum_in array
            return 0 if array.empty?
            sum_so_far = 0
            largest_sum = array.min

            array.each do |ele|
                sum_so_far = sum_so_far + ele
                
                if sum_so_far > largest_sum
                    largest_sum = sum_so_far
                end 

                if sum_so_far < 0 
                    sum_so_far = 0
                end
            end 
            largest_sum
        end 

    
        def benchmark_for array
            puts Benchmark.measure { largest_sum_in(array) }
        end 

    end 
end 