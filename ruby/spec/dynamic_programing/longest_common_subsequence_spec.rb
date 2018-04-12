require 'spec_helper'
require_relative '../../src/dynamic_programing/longest_common_subsequence'



RSpec.describe LongestCommonSubsequence do
    describe "positive test cases" do 
        it "should return correct results" do 
            expect(LongestCommonSubsequence.get_length("AGGTAB","GXTXAYB")).to eql(4)
        end

        it "should return correct results" do 
            expect(LongestCommonSubsequence.get_length("","GXTXAYB")).to eql(0)
        end

        it "should return correct results" do 
            expect(LongestCommonSubsequence.get_length("ABCDGH","AEDFHR")).to eql(3)
        end

    end 

    describe "Benchmarking code" do 
        it "should print the benchmarking stats" do 
            LongestCommonSubsequence.benchmark_for("ABCDGH","AEDFHR")
        end 
    end 



end

