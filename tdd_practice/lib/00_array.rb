require 'byebug'

def my_uniq(array)
  uniq_array = []

  array.each do |num|
    uniq_array << num unless uniq_array.include?(num)
  end

  uniq_array
end

def two_sum(array)
  pairs = []

  array.each_with_index do |num1, x|
    array.each_with_index do |num2, y|
    pairs << [x, y] if (num1 + num2) == 0 if x < y
  end
end

   pairs.sort
end

def my_transpose(array)
  transposed_array = Array.new(array.length) { Array.new(array.length) }

  array.each_with_index do |row, i|
    row.each_with_index do |col, j|
      transposed_array[i][j] = array[j][i]
    end
  end

  transposed_array
end










