require 'spec_helper'
require_relative '../src/longest_common_prefix'

RSpec.describe LongestCommonPrefix do
    describe 'positive test cases' do 
        it "should return correct results" do
            expect(LongestCommonPrefix.longest_common_prefix_for(["flower","flow","flight"])).to eql("fl")
            expect(LongestCommonPrefix.longest_common_prefix_for(["dog","racecar","car"])).to eql("")
        end 
    end 

    describe 'benchmark' do 
        it "should print benchmark for " do 
            LongestCommonPrefix.benchmark_for(["flower","flow","flight"])
        end 
    end 
end 

