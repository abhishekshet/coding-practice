require 'benchmark'

class ValidParentheses
    class << self
        VALID_CHARS = ["(", ")", "{", "}", "[", "]"]
        PAIRS = {
            ")": "(",
            "}": "{",
            "]": "[",
        }.freeze
        
        def is_valid? expression
            expression_stack = []
            result = true 
            expression.each_char do |char|
                next unless VALID_CHARS.include?(char)
                if PAIRS.has_key?(char.to_sym)
                    result = (expression_stack.pop == PAIRS[char.to_sym])
                else 
                    expression_stack.push(char)
                end 
                break unless result
            end 

            puts "RESULt: #{result}"
            (expression_stack.empty? and result)
        end
        
        def print_benchmark_stats_for expression
            Benchmark.measure { is_valid? expression }
        end 
    
    end 
end 