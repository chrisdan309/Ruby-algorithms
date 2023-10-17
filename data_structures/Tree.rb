class BinaryTree
    attr_accessor :root

    def initialize(root = nil)
        @root = root
    end

    def insert(value)
        if @root.nil?
            @root = Node.new(value)
        else
            insert_node(@root, Node.new(value))
        end
    end

    def search(value)
        search_node(@root, value)
    end

    private

    def insert_node(node, new_node)
        if new_node.value < node.value
            if node.left.nil?
                node.left = new_node
            else
                insert_node(node.left, new_node)
            end
        else
            if node.right.nil?
                node.right = new_node
            else
                insert_node(node.right, new_node)
            end
        end
    end

    def search_node(node, value)
        return nil if node.nil?

        if node.value == value
            node
        elsif value < node.value
            search_node(node.left, value)
        else
            search_node(node.right, value)
        end
    end
end

class Node
    attr_accessor :value, :left, :right

    def initialize(value, left = nil, right = nil)
        @value = value
        @left = left
        @right = right
    end
end
