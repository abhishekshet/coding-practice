require 'benchmark'

class FizBizz
  class << self

    def fizbizz num

      num.times do |i|
        case
          when (i+1)%15 == 0 then puts "fizbuzz"
          when (i+1)%3 == 0 then  puts "fiz"
          when (i+1)%5 == 0 then  puts "buzz"
          else
            puts (i+1)
        end
      end


    end


    def benchmark_for num
      Benchmark.measure {fizbizz(num)}
    end

  end
end