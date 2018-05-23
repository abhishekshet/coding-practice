require 'spec_helper'
require_relative '../../src/dynamic_programing/largest_sum_contiguous_subarray'


RSpec.describe LargestSumContiguousSubarray do 

    describe 'positive test cases' do 

        it 'should return correct result for' do 
            expect(LargestSumContiguousSubarray.largest_sum_in([-2,1,-3,4,-1,2,1,-5,4])).to eql(6)
        end 

        it 'should return correct result for' do 
            expect(LargestSumContiguousSubarray.largest_sum_in([])).to eql(0)
        end 

        it 'should return correct result for' do 
            expect(LargestSumContiguousSubarray.largest_sum_in([-2,-5])).to eql(-2)
        end 

        it 'should return correct result for' do 
            expect(LargestSumContiguousSubarray.largest_sum_in([-3,1,])).to eql(1)
        end 



    end

    describe "benchmarking" do
        it "should print the benchmark" do
            LargestSumContiguousSubarray.benchmark_for([-2,1,-3,4,-1,2,1,-5,4])
        end
    end 

end 