require 'benchmark'

class LongestIncreasingSubsequence
    class << self

        def recursive(sequence, len)

            return 1 if len == 1
            current_seq_len = 1

            (1...len).each do |index|
                sub_seq_len = recursive(sequence, index)
                 if(sub_seq_len + 1 > current_seq_len and sequence[index-1] < sequence[len-1])
                    current_seq_len = sub_seq_len + 1
                 end 
            end 

            return current_seq_len
        end 

        def optimal_substructure sequence
            store = Array.new(sequence.length, 1)
            
            (1...sequence.length).each do |i_index|
                (0...i_index).each do |j_index|
                    if(sequence[j_index]< sequence[i_index] and store[j_index]+ 1 > store[i_index])
                        store[i_index] = store[j_index] + 1
                    end 
                end 
            end 

            store.max

        end  
        
        def benchmark_for_optimal_substructure sequence
            puts Benchmark.measure { optimal_substructure(sequence) } 
        end 

        def benchmark_for_recursive sequence
            puts Benchmark.measure { recursive(sequence, sequence.length) } 
        end 
    end 
end 