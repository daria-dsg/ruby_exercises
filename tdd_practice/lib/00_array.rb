
def my_uniq(array)
  uniq_array = []

  array.each do |num|
    uniq_array << num unless uniq_array.include?(num)
  end

  uniq_array
end




