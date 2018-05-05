require 'spec_helper'
require_relative '../src/longest_common_prefix'

RSpec.describe LongestCommonPrefix do
    describe 'positive test cases' do 
        it "should return correct results using vertical comparison" do
            expect(LongestCommonPrefix.using_vertical_comparison(["flower","flow","flight"])).to eql("fl")
            expect(LongestCommonPrefix.using_vertical_comparison(["dog","racecar","car"])).to eql("")
        end 


        it "should return correct results using horizontal comparison" do
            expect(LongestCommonPrefix.using_horizontal_comparison(["flower","flow","flight"])).to eql("fl")
            expect(LongestCommonPrefix.using_horizontal_comparison(["dog","racecar","car"])).to eql("")
        end 


    end 

    describe 'benchmark' do 
        it "should print benchmark for " do 
            LongestCommonPrefix.benchmark_for(["flower","flow","flight"])
        end 
    end 
end 

