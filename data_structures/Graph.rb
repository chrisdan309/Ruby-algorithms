class Graph
    attr_accessor :nodes

    def initialize
        @nodes = []
    end

    def add_node(node)
        @nodes << node
    end

    def to_s
        @nodes.each do |node|
            print "#{node.value}: "
            print "#{node.edges.map(&:value)}"
            puts
        end
    end

end



class Node
    attr_accessor :value, :edges

    def initialize(value)
        @value = value
        @edges = []
    end

    def add_edge(edge)
        @edges << edge
    end
end


# create a graph with 4 vertex 
# 0: 1, 2
# 1: 2
# 2: 0, 3
# 3: 3
graph = Graph.new
graph.add_node(Node.new(0))
graph.add_node(Node.new(1))
graph.add_node(Node.new(2))
graph.add_node(Node.new(3))

graph.nodes[0].add_edge(graph.nodes[1])
graph.nodes[0].add_edge(graph.nodes[2])
graph.nodes[1].add_edge(graph.nodes[2])
graph.nodes[2].add_edge(graph.nodes[0])
graph.nodes[2].add_edge(graph.nodes[3])
graph.nodes[3].add_edge(graph.nodes[3])

puts graph

# Output