require_relative "./graphnode.rb"

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

def bfs(starting_node, target_value)
    queue = [starting_node]
    visited = []
    visited.push(starting_node)
    while !queue.empty?
        current_node = queue.shift
        return current_node if current_node.value == target_value
        current_node.neighbors.each do |neighbor|
            if !visited.include?(neighbor)
                visited.push(neighbor)
                queue.push(neighbor)
            end
        end
    end
    nil
end

p bfs(a,"b")
p bfs(a,"f")
