require 'benchmark'

class Fibonacci

    @@memo_store = {}

    class << self
        def recursive number
            if [0,1].include? number  
                return number
            else
                return recursive(number -1) + recursive(number - 2) 
            end
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
            tab_store = []    
            tab_store[0] = 0
            tab_store[1] = 1
            i = 2
            while(i <= number) do 
                tab_store[i] = tab_store[i-1] + tab_store[i-2]
                i +=1
            end 
          return  tab_store[number]
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
