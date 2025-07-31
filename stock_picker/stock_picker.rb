# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day.
# It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.
# example   > stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]  # for a profit of $15 - $3 == $12
#
# many thanks to Tom Lord for the steps found here : https://stackoverflow.com/questions/59821992/explanation-for-best-time-to-buy-and-sell-stock-ruby-solution

def stock_picker(stock_array)
  return 0 if stock_array.size < 2 # return early
  min_price = stock_array[0]
  profit = 0

  stock_array.each_with_index { |price, index|
    profit = price - min_price if profit < price - min_price

    min_price = price if price < min_price
  }
  printf "Profit max : %d\n", profit
  return profit
end

stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
