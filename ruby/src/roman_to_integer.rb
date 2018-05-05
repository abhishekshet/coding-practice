require 'benchmark'

class RomanToInteger

    class << self
    
        CONVERSION = {
            I: 1,
            V: 5,
            X: 10,
            L: 50,
            C: 100,
            D: 500,
            M: 1000
        }.freeze

        def get_int_from  roman
            total = 0
            prev_val = 0 
            roman.chars.reverse_each do |char|
                cur_val = CONVERSION[char.to_sym]

                if prev_val > cur_val and prev_val != cur_val
                    total = total - cur_val    
                else    
                    total = total + cur_val    
                end 
                prev_val = cur_val
            end 
            total
        end 
        
        def benhmark_for roman
            puts Benchmark.measure {get_int_from(roman)}
        end 
    end 

end 