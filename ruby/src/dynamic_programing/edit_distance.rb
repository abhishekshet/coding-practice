require 'benchmark'

class EditDistance
    class << self

        def distance_recursive str_1, str_2

            return str_2.length if str_1.length.eql? 0 
            
            return str_1.length if str_2.length.eql? 0
                
            if str_2[-1] == str_1[-1]
                return distance_recursive(str_1[0...-1], str_2[0...-1])
            end 

            return 1+ [distance_recursive(str_1[0...-1], str_2[0...-1]),
                    distance_recursive(str_1, str_2[0...-1]),
                    distance_recursive(str_1[0...-1], str_2)
                    ].min    
        end 

        def distance_store str_1, str_2
            str_1_length = str_1.length
            str_2_length = str_2.length


            return str_2_length if str_1_length.eql? 0 
            
            return str_1_length if str_2_length.eql? 0

            distance = Array.new(str_1_length){Array.new(str_2_length,0)}

            distance.each_with_index do |row, r_index|
                row.each_with_index do |column, c_index|
                    
                    if str_1.length == 0
                      distance[r_index][c_index] = c_index
                   
                      
                    elsif str_2.length == 0
                        distance[r_index][c_index] = r_index
                    elsif str_1[r_index - 1] == str_2[c_index -1 ]
                        distance[r_index][c_index] = distance[r_index -1 ][c_index -1]
                    else
                        distance[r_index][c_index] =    1 + [distance[r_index-1][c_index-1],
                                                            distance[r_index-1][c_index],
                                                            distance[r_index][c_index-1]
                                                        ].min    
                    end 
                end 
            end
            
            return  distance[(str_1_length -1)][(str_2_length -1)]
        end 

        def benchmark_for_recursive str_1, str_2
            puts Benchmark.measure { distance_recursive(str_1, str_2) }
        end
      
        def benchmark_for_distance_store str_1, str_2
            puts Benchmark.measure { distance_store(str_1, str_2) }
        end 
    end 
end 