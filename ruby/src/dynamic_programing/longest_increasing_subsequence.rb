require 'benchmark'

class LongestIncreasingSubsequence
    class << self

        @@max_ref = 1

        def recursive(sequence, len)
            return 1 if len == 1 
    
            max_lis_len = 1

            (1...len).each do |index|
                sub_lis_len = recursive(sequence, index)
                if (sequence[index-1] < sequence[len-1] && sub_lis_len + 1 > max_lis_len)
                    max_lis_len = sub_lis_len + 1
                end    
            end 

            @@max_ref = max_lis_len if @@max_ref < max_lis_len
                
            return max_lis_len
        end 


        def optimal_substructure sequence
            store = Array.new(sequence.length, 1)
            
            (1...sequence.length).each do |index|
                (0...index).each do |j_index|
                    if(sequence[j_index] < sequence[index] and store[j_index]+ 1 > store[index])
                        store[index] = store[j_index] + 1
                    end 
                end 
            end 
            return store.max
        end  
        
        def benchmark_for_optimal_substructure sequence
            puts Benchmark.measure { optimal_substructure(sequence) } 
        end 

        def benchmark_for_recursive sequence
            puts Benchmark.measure { recursive(sequence, sequence.length) } 
        end 
    end 
end 