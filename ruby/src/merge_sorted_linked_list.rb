require 'benchmark'

class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end


class MergeSortedLinkedList
    class << self

        def generate_list_with vals
            nodes = []
            vals.each do |val, index|
                node = ListNode.new(val)
                nodes << node
            end 
            (0...nodes.length-1).each do |index|
                nodes[index].next = nodes[index+1]
            end
            nodes[0]
        end 


        def merge_list(l1, l2)
            return l2 if l1.nil?
            return l1 if l2.nil?

            if l1.val < l2.val
                l1.next = merge_list(l1.next, l2)
                return l1
            else
                l2.next = merge_list(l1, l2.next)
                return l2
            end 
        end 

        def insert_node_in_list node, list 

            head = list
        
            while head !=nil do 
                if head.next.val > node.val
                    node.next = head.next
                    head.next = node 
                    break
                end 
                head = head.next
            end 
        
            return list
        end

        def get_values list
            ret = []
            while list !=nil do 
            ret << list.val
            list = list.next
            end
            ret
        end 

    end 
end 



