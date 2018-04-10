require 'benchmark'

class Anagrams

  class << self

    def is_anagram src, dest
      word_counts(src) === dest_count = word_counts(dest)
    end

    def word_counts str
      store = {}
      str.chars.each do |ch|
        if ch =~ /[a-zA-Z]/
          ch = ch.downcase
          store[ch] ? (store[ch] +=1) : (store[ch] = 1)
        end
      end
      store
    end


    def benchmark_for arry, size
      Benchmark.measure { is_anagram(src, dest) }
    end

  end

end