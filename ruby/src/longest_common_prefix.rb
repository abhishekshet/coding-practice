require 'benchmark'

class LongestCommonPrefix
    class << self
        
        def using_vertical_comparison arry
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

        def using_horizontal_comparison arry
            return "" if arry.empty?
            lcp = arry[0]

            (1...arry.length).each do |index|
                lcp = recursive_method(lcp, arry[index])
                break if lcp.empty?
            end
            lcp
        end 

        def recursive_method(str1, str2)
            return "" if str1.empty? or str2.empty?
            if str1[0] == str2[0]
                return (str1[0] + recursive_method(str1[1..-1], str2[1..-1]))
            else 
                return ""    
            end
        end

        def benchmark_for arry
            puts Benchmark.measure {using_vertical_comparison(arry)}
            puts Benchmark.measure {using_horizontal_comparison(arry)}
        end 

    end 
end 