class GraphNode

attr_accessor :value, :neighbors

def initialize(value)
    @value = value 
    @neighbors = []
end

def bfs(starting_node, target_value)
    visited = Set.new()
    array = [starting_node]
    until array.empty? 
        node = array.shift
        if node.value == target_value 
            return node 
        end
        if !visited.include?(node)
        array << node.neighbors 
        end 
    end
    return nil

end
end


