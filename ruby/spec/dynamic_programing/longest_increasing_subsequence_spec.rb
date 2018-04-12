require 'spec_helper'
require_relative '../../src/dynamic_programing/longest_increasing_subsequence'



RSpec.describe LongestIncreasingSubsequence do

    describe 'positive test cases optimal substructure' do 
        it 'should return the correct results' do
            input = [10, 22, 9, 33, 21, 50, 41, 60] 
            expect(LongestIncreasingSubsequence.optimal_substructure(input)).to eql(5)
        end
        
        it 'should return the correct results' do
            input = [10, 22] 
            expect(LongestIncreasingSubsequence.optimal_substructure(input)).to eql(2)
        end
        
        it 'should return the correct results' do
            input = [5,4,3,2,1] 
            expect(LongestIncreasingSubsequence.optimal_substructure(input)).to eql(1)
        end
    end 

    describe "recursive method" do 
        it 'should return the correct results' do
            input = [10, 22, 9, 33, 21, 50, 41, 60]
            expect(LongestIncreasingSubsequence.recursive(input, input.length)).to eql(5)
        end
        it 'should return the correct results' do
            input = [10, 22] 
            expect(LongestIncreasingSubsequence.recursive(input, input.length)).to eql(2)
        end
        it 'should return the correct results' do
            input = [5,4,3,2,1] 
            expect(LongestIncreasingSubsequence.recursive(input, input.length)).to eql(1)
        end
    end 

    describe "benchmarking" do
        it "should print the benchmark" do
            LongestIncreasingSubsequence.benchmark_for_optimal_substructure([10, 22, 9, 33, 21, 50, 41, 60])
        end

        it "should print the benchmark" do
            LongestIncreasingSubsequence.benchmark_for_recursive([10, 22, 9, 33, 21, 50, 41, 60])
        end

      end 

end