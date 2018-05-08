require 'spec_helper'
require_relative '../src/count_and_say'


RSpec.describe CountAndSay do
    describe 'positive test cases' do

        it "should return correcr results" do 
            expect(CountAndSay.value_at_position(1)).to eql("1")
        end 
        it "should return correcr results" do 
            expect(CountAndSay.value_at_position(4)).to eql("1211")
        end 
        it "should return correcr results" do 
            expect(CountAndSay.value_at_position(2)).to eql("11")
        end 
        it "should return correcr results" do 
            expect(CountAndSay.value_at_position(3)).to eql("21")
        end 
        

    end 

    describe "benchmarking" do
        it "should print the benchmark" do
            CountAndSay.benhmark_for(4)
        end
      end
    

end 