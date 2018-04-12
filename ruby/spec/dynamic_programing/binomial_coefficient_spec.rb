require 'spec_helper'
require_relative '../../src/dynamic_programing/binomial_coefficient'



RSpec.describe BinomialCoefficient do
  describe 'positive test cases' do
    it "should return the correct value" do 
        expect(BinomialCoefficient.outcomes(5,2)).to eql(10)    
    end
  end

  describe "benchmarking" do
    it "should print the benchmark" do
        BinomialCoefficient.benchmark_for(5,2)
    end
  end 

end 