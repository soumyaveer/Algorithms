require_relative "../../src/algorithms/dijkstras"

module Algorithms
  describe Dijkstras do
    before do
      @graph = Containers::Graph.new

      @graph.add_vertex('A')
      @graph.add_vertex('B')
      @graph.add_vertex('C')
      @graph.add_vertex('D')
      @graph.add_vertex('E')
      @graph.add_vertex('F')

      @graph.add_edge('A', 'B')
      @graph.add_edge('A', 'C')
      @graph.add_edge('B', 'D')
      @graph.add_edge('B', 'E')
      @graph.add_edge('B', 'C')
      @graph.add_edge('C', 'E')
      @graph.add_edge('E', 'D')
      @graph.add_edge('E', 'F')

      @graph_adjacency_matrix = [[0, 2, 4, 0, 0, 0],
                                 [0, 0, 1, 4, 2, 0],
                                 [0, 0, 0, 0, 3, 0],
                                 [0, 0, 0, 0, 0, 2],
                                 [0, 0, 0, 3, 0, 2],
                                 [0, 0, 0, 0, 0, 0]]
    end

    it 'returns the shortest path from a graph vertex to all other vertices' do
    end
  end
end
