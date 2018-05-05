require 'spec_helper'
require_relative '../src/valid_parentheses'



RSpec.describe ValidParentheses do

    describe "positive test cases" do 
        it "should return true for" do 
            expect(ValidParentheses.is_valid?("()")).to be_truthy
        end 

        it "should return true for" do 
            expect(ValidParentheses.is_valid?("()[]{}")).to be_truthy
        end 

        it "should return true for" do 
            expect(ValidParentheses.is_valid?("{[]}")).to be_truthy
        end 

        it "should return true for" do 
            expect(ValidParentheses.is_valid?("(a+b)-c")).to be_truthy
        end        
    end 

    describe "negative false cases " do 
        it "should return false for" do 
            expect(ValidParentheses.is_valid?("(]")).to be_falsy
        end 

        it "should return false for" do 
            expect(ValidParentheses.is_valid?("([)]")).to be_falsy
        end 

        it "should return false for" do 
            expect(ValidParentheses.is_valid?("{[)]}")).to be_falsy
        end 

        it "should return false for" do 
            expect(ValidParentheses.is_valid?("((a+b)-c")).to be_falsy
        end 

        it "should return false for" do 
            expect(ValidParentheses.is_valid?("{{)}")).to be_falsy
        end 
    end 

    describe "print benchmark stats" do 
        it "should print benchmark stats" do 
            ValidParentheses.print_benchmark_stats_for("()[]{}")
        end 
    end 

end 