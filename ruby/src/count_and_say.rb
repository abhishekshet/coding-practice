require 'benchmark'

class CountAndSay 
    class << self
        def value_at_position input
            result = 1
            return result if input == 1 
            (input-1).times do 
                result = say_out(result)
            end 
            result
        end 

        def say_out input
            input = input.to_s
            result = ""
            count = 1
            (0...input.length).each do |index|
                if input[index] == input[index+1]
                    count += 1
                else
                    result = result.concat(count.to_s).concat(input[index])
                    count = 1
                end 
            end 
            result
        end 



        def benhmark_for input 
            puts Benchmark.measure {value_at_position(input)}
        end 


    end
end 