require 'benchmark'

class Palindrome
  class << self

    def palindrome str
      return true if str.length.eql? 0
      str = str.downcase
      inp_arr_length = str.chars.length
      index = 0
      while index < (inp_arr_length/2) do
        if str[index] == str[inp_arr_length -1 - index]
          index +=1
        else
          return false
        end
      end
      return true
    end

    def benhmark_for str
      puts Benchmark.measure { palindrome(str) }
    end

  end
end

