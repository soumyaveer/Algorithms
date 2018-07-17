# Class Nodes creates nodes for tree data structure
module Containers
  module Trees
    class Node
      attr_accessor :key, :right, :left

      def initialize(key, right = nil, left = nil)
        @key = key
        @right = right
        @left = left
      end

      def empty?
        @key.nil?
      end

      def right?
        !@right.nil?
      end

      def left?
        !@left.nil?
      end
    end
  end
end
