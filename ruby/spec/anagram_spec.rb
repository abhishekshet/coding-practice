require 'spec_helper'
require_relative '../src/anagrams'



RSpec.describe Anagrams do
  describe 'positive test cases' do

    it "should return correct results for " do
      expect(Anagrams.is_anagram('rail SAFETY!!!!!!', 'fairy !tales')).to be_truthy
    end

    it "should return correct results for " do
      expect(Anagrams.is_anagram('Whoa! Hi!', 'Hi! Whoa!')).to be_truthy
    end

    it "should return correct results for " do
      expect(Anagrams.is_anagram('One One', 'Two two two')).to be_falsey
    end

    it "should return correct results for " do
      expect(Anagrams.is_anagram('One one', 'One one c')).to be_falsey
    end

    it "should return correct results for " do
      expect(Anagrams.is_anagram('A tree, a life, a bench', 'A tree, a fence, a yard')).to be_falsey
    end

  end
end
