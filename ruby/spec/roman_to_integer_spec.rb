require 'spec_helper'
require_relative '../src/roman_to_integer'



RSpec.describe RomanToInteger do

  describe 'positive integers' do
   it 'should return expected value' do
     expect(RomanToInteger.get_int_from("III")).to eq(3)
     expect(RomanToInteger.get_int_from("IV")).to eq(4)
     expect(RomanToInteger.get_int_from("IX")).to eq(9)
     expect(RomanToInteger.get_int_from("LVIII")).to eq(58)
     expect(RomanToInteger.get_int_from("MCMXCIV")).to eq(1994)
   end
  end

  describe "benchmarking" do
    it "should print the benchmark" do
        RomanToInteger.benhmark_for("MCMXCIV")
    end
  end

end