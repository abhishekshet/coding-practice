require 'benchmark'

class StringReversal

  class << self


    def get_reverse(str)
      get_reversal_efficient(str)
    end

    def get_reverse_1 str
      if str.class.eql?(String)
        inp_arr = str.chars
        reverse_chars = ""
        inp_arr.length.times do
          reverse_chars = reverse_chars.concat(inp_arr.pop)
        end
        reverse_chars
      else
        raise "Please provide an string input"
        return nil
      end
    end


    def benhmark_for str
      puts Benchmark.measure { get_reverse(str) }
    end

    def get_reversal_efficient str
      if str.class.eql?(String)
        inp_arr = str.chars
        inp_arr_length = inp_arr.length

        index = 0
        while index < (inp_arr_length/2) do
          tmp = inp_arr[(inp_arr_length - 1) - index ]
          inp_arr[(inp_arr_length - 1) - index ] = inp_arr[index]
          inp_arr[index] = tmp
          index +=1
        end

         inp_arr.join("")
      else
        raise "Please provide an string input"
        return nil
      end
    end

  end



end