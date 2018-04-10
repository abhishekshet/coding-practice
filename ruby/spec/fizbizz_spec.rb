require 'spec_helper'
require_relative '../src/fizbizz'



RSpec.describe FizBizz do
  describe 'positive test cases' do
    it 'prints awesome things' do
      expect do
        FizBizz.fizbizz(5)
      end.to output("1\n2\nfiz\n4\nbuzz\n").to_stdout
    end

    it 'does not print not awesome things' do
      expect do
        FizBizz.fizbizz(15)
      end.to output("1\n2\nfiz\n4\nbuzz\nfiz\n7\n8\nfiz\nbuzz\n11\nfiz\n13\n14\nfizbuzz\n").to_stdout
    end

  end

  describe "benchmarking" do
    it "should print the benchmark" do
      FizBizz.benchmark_for(15)
    end
  end

end
