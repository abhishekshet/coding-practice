require 'benchmark'

class EditDistance
    class << self

        def distance_recursive str_1, str_2
            return str_2.length if str_1.length == 0
            return str_1.length if str_2.length == 0

            if str_1[-1] == str_2[-1]
                return distance_recursive(str_1[0...-1],str_2[0...-1])
            end 

            return 1 + [distance_recursive(str_1[0...-1], str_2[0...-1]),
                        distance_recursive(str_1[0...-1], str_2),
                        distance_recursive(str_1, str_2[0...-1])
            ].min

        end 

        def distance_store str_1, str_2
            store = Array.new(str_1.length + 1) {Array.new(str_2.length+1, 0)}

            store.each_with_index do |row, r_index|
                row.each_with_index do |column, c_index|

                    if str_1.length == 0 
                        store[r_index][c_index] = c_index
                    elsif str_2.length == 0 
                        store[r_index][c_index] = r_index
                    elsif str_1[r_index -1] == str_2[c_index-1]    
                        store[r_index][c_index] = store[r_index-1][c_index-1]
                    else 
                        store[r_index][c_index] = 1 + [
                                                        store[r_index-1][c_index-1],
                                                        store[r_index-1][c_index-1],
                                                        store[r_index][c_index-1]
                                                    ].min
                    end 

                end 
            end 
            store[str_1.length][str_2.length]
        end 

        def benchmark_for_recursive str_1, str_2
           puts Benchmark.measure { distance_recursive(str_1, str_2) }
        end
      
        def benchmark_for_distance_store str_1, str_2
           puts Benchmark.measure { distance_store(str_1, str_2) }
        end 
    end 
end 