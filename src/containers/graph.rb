# graph data structure
module Containers
  class Graph
    attr_accessor :vertices, :adj_list

    def initialize
      @vertices = []
      @adj_list = Dictionary.new
    end

    def empty?
      vertices.empty?
    end

    def size_of_vertices
      vertices.count
    end

    def add_vertex(vertex)

    end
  end
end

