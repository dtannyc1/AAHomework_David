class GraphNode
    attr_reader :value
    attr_accessor :neighbors
    def initialize(value)
        @value = value
        @neighbors = []
    end
end
