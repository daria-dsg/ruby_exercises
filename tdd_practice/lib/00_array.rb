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

def pick_stock(prices)
  best_profit = 0
  best_pair = nil

  prices.each_with_index do |price1, buy_day|
    prices.each_with_index do |price2, sell_day|
      
      # can not buy before sell
      next if buy_day > sell_day
      
      profit = price2 - price1
      if profit > best_profit
        best_profit, best_pair  = profit, [buy_day, sell_day]
      end
    end
  end 

  best_pair
end











