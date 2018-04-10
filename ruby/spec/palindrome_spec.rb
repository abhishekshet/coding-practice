require 'spec_helper'
require_relative '../src/palindrome'



RSpec.describe Palindrome do
  describe 'positive test cases' do

    it "returns correct result for palindrome" do
      str = "Nitin"
      expect(Palindrome.palindrome(str)).to be(true)
    end

    it "return empty string when empty string is passed" do
      str = ""
      expect(Palindrome.palindrome(str)).to be(true)
    end

  end

  describe 'negative test cases' do
     it "should identify incorrect palindrome" do
       str = "Abhishek"
       expect(Palindrome.palindrome(str)).to be(false)
     end
  end


  describe "benchmarking" do
    it "should print the benchmark" do
      Palindrome.benhmark_for("NITIN")
    end
  end

end