require 'benchmark'

class LongestCommonPrefix
    class << self
        
        def longest_common_prefix_for arry
            ret = ""
            return ret if arry.empty?

            arry[0].split("").each_with_index do |char, index|
                (1...arry.length).each do |j_index|
                    curr_word = arry[j_index]
                    unless char == curr_word[index]
                        return ret
                    end 
                end 
                ret = ret + char
            end 
            ret
        end 

        def benchmark_for arry
            Benchmark.measure {longest_common_prefix_for(arry)}
        end 

    end 
end 