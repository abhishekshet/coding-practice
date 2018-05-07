require 'spec_helper'
require_relative '../src/merge_sorted_linked_list'


RSpec.describe MergeSortedLinkedList do

    describe "postive test cases" do 
        
        it "should return the correct result" do 
            list_one =  MergeSortedLinkedList.generate_list_with([1,2,4]) 
            list_two =  MergeSortedLinkedList.generate_list_with([1,2,3]) 
            result = MergeSortedLinkedList.merge_list(list_one,list_two)
            expect(MergeSortedLinkedList.get_values(result)).to eql([1, 1, 2, 2, 3, 4])
        end 

        it "should return the correct result" do 
            list_one =  MergeSortedLinkedList.generate_list_with([1,2,4]) 
            result = MergeSortedLinkedList.merge_list(nil,list_one)
            expect(MergeSortedLinkedList.get_values(result)).to eql([1,2,4])
        end 

        it "should return the correct result" do 
            list_one =  MergeSortedLinkedList.generate_list_with([1,2,4]) 
            result = MergeSortedLinkedList.merge_list(list_one, nil)
            expect(MergeSortedLinkedList.get_values(result)).to eql([1,2,4])
        end 


    end 
end
