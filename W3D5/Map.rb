class Map
    def initialize
        @map = []
    end

    def set(key,value)
        key_exists = false
        @map.each_with_index do |key_val_pair, ii|
            if key_val_pair[0] == key
                @map[ii][1] = value
                key_exists = true
                break
            end
        end
        @map << [key,value] unless key_exists
        return
    end

    def get(key)
        @map.each do |key_val_pair|
            if key_val_pair[0] == key
                return key_val_pair[1]
            end
        end
        nil
    end

    def delete(key)
        @map.each_with_index do |key_val_pair, ii|
            if key_val_pair[0] == key
                return @map.slice!(ii)
            end
        end
        nil
    end

    def show
        @map
    end
end
