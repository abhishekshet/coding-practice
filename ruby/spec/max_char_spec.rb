require 'spec_helper'
require_relative '../src/max_char'



RSpec.describe MaxChar do
  describe 'positive test cases' do
    it "should return same char for only one char input" do
      expect(MaxChar.max_char("a")).to eql("a")
    end

    it "should return correct value for multiple chars" do
      expect(MaxChar.max_char("abcdefghijklmnaaaaa")).to eql("a")
    end

    it "should return correct value for numbers too" do
      expect(MaxChar.max_char("ab1c1d1e1f1g1")).to eql("1")
    end

  end
end

