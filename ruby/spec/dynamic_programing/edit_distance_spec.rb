require 'spec_helper'
require_relative '../../src/dynamic_programing/edit_distance'



RSpec.describe EditDistance do
  describe 'positive test cases' do
    describe 'recursive method' do
        it "should return the correct results" do 
            expect(EditDistance.distance_recursive("saturday", "sunday")).to eql(3)
        end 
        it "should return the correct results" do 
            expect(EditDistance.distance_recursive("saturday", "")).to eql(8)
        end 

        it "should return the correct results" do 
            expect(EditDistance.distance_recursive("", "sunday")).to eql(6)
        end 

        it "should return the correct results" do 
            expect(EditDistance.distance_recursive("Feels", "Feeals")).to eql(1)
        end 
    end 

    describe 'optimal method' do
        it "should return the correct results" do 
            expect(EditDistance.distance_store("saturday", "sunday")).to eql(3)
        end 
        it "should return the correct results" do 
            expect(EditDistance.distance_store("saturday", "")).to eql(8)
        end 

        it "should return the correct results" do 
            expect(EditDistance.distance_store("", "sunday")).to eql(6)
        end 

        it "should return the correct results" do 
            expect(EditDistance.distance_store("Feels", "Feeals")).to eql(1)
        end 
    end


    describe "benchmarking" do
        it "should print the benchmark" do
            EditDistance.benchmark_for_distance_store("Feels", "Feeals")
        end
    
        it "should print the benchmark" do
            EditDistance.benchmark_for_recursive("Feels", "Feeals")
        end
      end

  end
end 