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

    def to_s
      graph = ''
      vertices.each do |vertex|
        graph += "#{vertex} -> "
        neighbors = adj_list.get(vertex)
        neighbors.each {|neighbor| graph += "#{neighbor} "}
        graph += "\n"
      end
      graph
    end

    def breadth_first_search(vertex)
      color = initialize_color
      queue = Queue.new
      queue.enqueue(vertex)
      visited_vertices = []

      until queue.empty?
        discovered_vertex = queue.dequeue
        neighbors = adj_list.get(discovered_vertex)
        color[discovered_vertex] = 'grey'

        neighbors.each do |neighbor|
          if color[neighbor] == 'white'
            color[neighbor] = 'grey'
            queue.enqueue(neighbor)
          end
        end
        color[discovered_vertex] = 'black'
        visited_vertices << discovered_vertex
      end
      visited_vertices
    end

    def display_node(visited_vertices)
      visited_vertices.join(' -> ')
    end

    private

    def initialize_color
      color = {}
      vertices.each do |vertex|
        color[vertex] = 'white'
      end
      color
    end
  end
end

