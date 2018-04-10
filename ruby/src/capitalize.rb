require 'benchmark'

class Capitalize

  class << self

    def capitalize str
      capitalize_using_for_loop str
    end

    def capitalize_functional_way str
      result = []
      str.split(" ").each do |word|
        result << (word[0].upcase + word.slice(1..-1))
      end
      result.join(" ")
    end

    def capitalize_using_for_loop str
      result = str[0].upcase
      i = 1
      while(i< str.length) do
        (str[i-1] == " " ) ? result.concat(str[i].upcase) : result.concat(str[i])
        i+=1
      end
      result
    end



    def benchmark_for str
      Benchmark.measure { capitalize str}
    end

  end

end