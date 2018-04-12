require 'benchmark'

class Fibonacci

    @@memo_store = {}

    class << self
        def recursive number
            return_val = [0,1].include?(number)  ? number : (recursive(number -1) + recursive(number - 2) )
            return_val
        end

        def memoized number
            unless @@memo_store[number] 
                if [0,1].include? number  
                    @@memo_store[number] = number
                else
                    @@memo_store[number] = memoized(number-1) + memoized(number-2)
                end 
            end 
            @@memo_store[number]
        end 

        def tabulated number
            tab_store = [0,1]    
            (2..number).each do |index|
                tab_store[index] = tab_store[index-1] + tab_store[index-2]
            end 
            tab_store[number]
        end
        
        
        def benhmark_for_recursive number
            puts Benchmark.measure { recursive(number) }
        end
      
        def benhmark_for_memoized number
            puts Benchmark.measure { memoized(number) }
        end

        def benhmark_for_tabulated number
            puts Benchmark.measure { tabulated(number) }
        end

    end 
end 
