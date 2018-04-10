require 'spec_helper'
require_relative '../../src/dynamic_programing/fibonacci'



RSpec.describe Fibonacci do
  describe 'positive test cases' do

    it "should return correct results for given input for recursion " do
        expect(Fibonacci.recursive(40)).to eql(102334155)
    end

    it "should return correct results for given input for memoization " do
        expect(Fibonacci.memoized(40)).to eql(102334155)
    end

    it "should return correct results for given input for tabulization " do
        expect(Fibonacci.tabulated(40)).to eql(102334155)
    end
  end


  describe "benchmarking" do
    it "should print the benchmark" do
        Fibonacci.benhmark_for_recursive(40)
    end

    it "should print the benchmark" do
        Fibonacci.benhmark_for_memoized(40)
    end

    it "should print the benchmark" do
        Fibonacci.benhmark_for_tabulated(40)
    end
  end


end
