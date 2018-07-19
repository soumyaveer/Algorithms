require_relative '../../src/containers/graph'

module Containers
  describe Graph do
    before do
      @graph = Graph.new
    end

    describe 'initialize' do
      it 'creates a new graph data structure' do
        expect(@graph.empty?).to be_truthy
        expect(@graph.size_of_vertices).to eql(0)
      end
    end

    describe 'empty?' do
      it 'returns true if the graph has no vertices' do
        expect(@graph.empty?).to be_truthy
      end

      it 'returns false if the graph has vertex' do
        @graph.add_vertex('A')
        expect(@graph.empty?).to be_falsy
      end
    end

    describe 'size_of_vertices' do
      it 'returns the number of vertices in the graph' do
        @graph.add_vertex('A')
        @graph.add_vertex('B')

        expect(@graph.size_of_vertices).to eql(2)
      end
    end

    describe 'add_vertex' do
      it 'adds a new vertex to the graph' do
        @graph.add_vertex('A')
        @graph.add_vertex('B')

        expect(@graph.empty?).to be_falsy
        expect(@graph.size_of_vertices).to eql(2)
      end
    end

    describe 'add_edge' do
      it 'adds edges to the vertices' do
        @graph.add_vertex('A')
        @graph.add_vertex('B')
        @graph.add_vertex('C')

        @graph.add_edge('A', 'B')
        @graph.add_edge('A', 'C')

        expect(@graph.empty?).to be_falsey
        expect(@graph.size_of_vertices).to eql(3)

        expect(@graph.to_s).to eql("A -> B C \nB -> A \nC -> A \n")
      end
    end

    describe 'to_s' do
      it 'displays the graph' do
        @graph.add_vertex('A')
        @graph.add_vertex('B')
        @graph.add_vertex('C')
        @graph.add_vertex('D')
        @graph.add_vertex('E')
        @graph.add_vertex('F')
        @graph.add_vertex('G')
        @graph.add_vertex('H')
        @graph.add_vertex('I')

        @graph.add_edge('A', 'B')
        @graph.add_edge('A', 'C')
        @graph.add_edge('A', 'D')
        @graph.add_edge('C', 'D')
        @graph.add_edge('C', 'G')
        @graph.add_edge('D', 'G')
        @graph.add_edge('D', 'H')
        @graph.add_edge('B', 'E')
        @graph.add_edge('B', 'F')
        @graph.add_edge('E', 'I')

        expect(@graph.empty?).to be_falsey
        expect(@graph.size_of_vertices).to eql(9)

        expect(@graph.to_s).to eql("A -> B C D \nB -> A E F \nC -> A D G \nD -> A C G H \nE -> B I \nF -> B \nG -> C D \nH -> D \nI -> E \n")
      end
    end

    describe 'breadth_first_search' do
      before do
        @graph.add_vertex('A')
        @graph.add_vertex('B')
        @graph.add_vertex('C')
        @graph.add_vertex('D')
        @graph.add_vertex('E')
        @graph.add_vertex('F')
        @graph.add_vertex('G')
        @graph.add_vertex('H')
        @graph.add_vertex('I')

        @graph.add_edge('A', 'B')
        @graph.add_edge('A', 'C')
        @graph.add_edge('A', 'D')
        @graph.add_edge('C', 'D')
        @graph.add_edge('C', 'G')
        @graph.add_edge('D', 'G')
        @graph.add_edge('D', 'H')
        @graph.add_edge('B', 'E')
        @graph.add_edge('B', 'F')
        @graph.add_edge('E', 'I')
      end
      it 'traverse the algorithm from first specified vertex and visits all its adjacent neighbors' do
        expected_visited_vertices = "A -> B -> C -> D -> E -> F -> G -> H -> I"
        visited_vertices = @graph.breadth_first_search(@graph.vertices[0])
        expect(@graph.display_node(visited_vertices)).to eql(expected_visited_vertices)
      end
    end
  end
end
