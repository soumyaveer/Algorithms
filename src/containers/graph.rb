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

    def add_vertex(element)
      vertices.push(element)
      adj_list.set(element, [])
    end

    def add_edge(vertex_a, vertex_b)
      adj_list.get(vertex_a).push(vertex_b)
      adj_list.get(vertex_b).push(vertex_a)
    end

    
  end
end

