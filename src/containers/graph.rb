# graph data structure
module Containers
  class Graph
    attr_accessor :vertices, :adj_list

    def initialize(vertices = [])
      @vertices = vertices
      @adj_list = Dictionary.new
    end
  end
end

