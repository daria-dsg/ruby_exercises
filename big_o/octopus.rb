def quadratic(fishes)
  fishes.each_with_index do |fish1, i1|
    longest_fish = true

    fishes.each_with_index do |fish2, i2|
      next if i1 == i2
      longest_fish = false if fish2.length > fish1.length
    end

    return fish1 if longest_fish
  end
end

def  merge_sort(fishes)
   return fishes if fishes.count == 1

   mid = fishes.length/2
   right = merge_sort(fishes.take(mid))
   left = merge_sort(fishes.drop(mid))

   merge(right,left)
end

def merge(right,left)
  merged = []

  until right.empty? || left.empty?
    if right.first.length > left.first.length
      merged << left.shift 
    elsif left.first.length > right.first.length
      merged << right.shift
    else
      merged << left.shift
    end
  end

  merged.concat(right)
  merged.concat(left)

  merged
end

def logarithmic(fishes)
  merge_sort(fishes).last
end

def linear(fishes)
  longest = fishes.first 

  fishes.each do |fish|
    longest = fish if fish.length > longest.length
  end

  longest
end

def linear_dance(direction, tiles)
  tiles.each_with_index do |tile, i|
    return i if tile == direction
  end
end

tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right"=> 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

def constant_dance(direction, tiles_hash)
  tiles_hash[direction]
end