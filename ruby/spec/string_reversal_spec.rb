require 'spec_helper'
require_relative '../src/string_reversal'



RSpec.describe StringReversal do

  describe "positive test cases" do

    it "returns correct reversed string" do
      str = "Example"
      expect(StringReversal.get_reverse(str)).to eq("elpmaxE")
    end

    it "returns correct reversed string with multiple words" do
      str = "Example is working"
      expect(StringReversal.get_reverse(str)).to eq("gnikrow si elpmaxE")
    end

    it "return empty string when empty string is passed" do
      str = ""
      expect(StringReversal.get_reverse(str)).to eq("")
    end

    it "should have the same length as the input string" do
      str = "test"
      expect(StringReversal.get_reverse(str).length).to eq(str.length)
    end


  end

  describe "negative test cases" do

    it "should raise an exception if input not string" do
      str = 10
      expect{StringReversal.get_reverse(str)}.to raise_error(RuntimeError, 'Please provide an string input')
    end

  end

  describe "benchmarking" do
    it "should print the benchmark" do
      StringReversal.benhmark_for("Example")
    end
  end

end