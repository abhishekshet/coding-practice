require 'spec_helper'
require_relative '../src/reverse_int'



RSpec.describe ReverseInt do

  describe 'positive integers' do
   it 'should return expected value' do
     expect(ReverseInt.reverse_int(23)).to eq(32)
     expect(ReverseInt.reverse_int(123)).to eq(321)
     expect(ReverseInt.reverse_int(23423)).to eq(32432)
     expect(ReverseInt.reverse_int(15423)).to eq(32451)
     expect(ReverseInt.reverse_int(98778)).to eq(87789)
   end

  end

  describe 'negative integers' do
    it "should handle negative numbers to " do
      expect(ReverseInt.reverse_int(-23)).to eq(-32)
      expect(ReverseInt.reverse_int(-123)).to eq(-321)
      expect(ReverseInt.reverse_int(-23423)).to eq(-32432)
      expect(ReverseInt.reverse_int(-15423)).to eq(-32451)
      expect(ReverseInt.reverse_int(-98778)).to eq(-87789)
    end
  end

  describe 'when 0 is passed' do
   it "should return 0 for this case" do
     expect(ReverseInt.reverse_int(0)).to eq(0)
   end
  end

  describe "benchmarking" do
    it "should print the benchmark" do
      ReverseInt.benhmark_for(1232)
    end
  end


end