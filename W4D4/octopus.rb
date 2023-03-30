fish_array = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh',
'fiiiissshhhhhh']

# O(n^2)
def sluggish_fish(all_fish)
    all_fish.each do |fish_1|
        biggest_fish = true
        all_fish.each do |fish_2|
            biggest_fish = false if fish_2.length > fish_1.length
        end
        return fish_1 if biggest_fish
    end
end

p sluggish_fish(fish_array)

# O(nlogn)
def dominant_fish(all_fish)
    all_fish.sort{|ele1, ele2| ele1.length <=> ele2.length}[-1]
end

p dominant_fish(fish_array)

# O(n)
def clever_fish(all_fish)
    biggest_fish = all_fish[0]
    all_fish.each {|fish| biggest_fish = fish if fish.length > biggest_fish.length }
    biggest_fish
end

p clever_fish(fish_array)

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down",
               "left",  "left-up"]

def slow_dance(target, array)
    array.each_with_index {|step, ii| return ii if step == target}
end

p slow_dance("up", tiles_array)
p slow_dance("right-down", tiles_array)

new_tiles_data_structure = {"up"=>0, "right-up"=>1, "right"=>2, "right-down"=>3,
                        "down"=>4, "left-down"=>5,"left"=>6,  "left-up"=>7}

def fast_dance(target, hash)
    hash[target]
end

p fast_dance("up", new_tiles_data_structure)
p fast_dance("right-down", new_tiles_data_structure)
