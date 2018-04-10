require 'spec_helper'
require_relative '../src/array_chunk'



RSpec.describe ArrayChunk do

  describe 'positive test cases' do
    it "should return the correct result" do
      arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
      expect(ArrayChunk.chunk(arr, 2)).to eql([[1, 2], [3, 4], [5, 6], [7, 8], [9, 10]])
    end

    it "test case when the chunk size is 1" do
      arr = [1, 2, 3]
      expect(ArrayChunk.chunk(arr, 1)).to eql([[1], [2], [3]])
    end

    it "test case when the chunk size is 3" do
      arr = [1, 2, 3, 4, 5]
      expect(ArrayChunk.chunk(arr, 3)).to eql([[1, 2, 3], [4, 5]])
    end

    it "test case when the chunk size is 5" do
      arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
      expect(ArrayChunk.chunk(arr, 5)).to eql([[1, 2, 3, 4, 5], [6, 7, 8, 9, 10], [11, 12, 13]])
    end

  end

end

