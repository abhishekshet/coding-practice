require 'benchmark'

class LongestCommonSubsequence
    class << self

        def get_length(sequence_one, sequence_two)
            if  sequence_one.length == 0 or sequence_two.length == 0 
                return 0
            elsif sequence_one[-1] == sequence_two[-1]
                return 1 + get_length(sequence_one[0...-1], sequence_two[0...-1])
            else 
                return [get_length(sequence_one[0...-1], sequence_two), get_length(sequence_one, sequence_two[0...-1])].max
            end
        end 

        def benchmark_for sequence_one, sequence_two
            puts Benchmark.measure { get_length(sequence_one, sequence_two)}
        end

    end
end