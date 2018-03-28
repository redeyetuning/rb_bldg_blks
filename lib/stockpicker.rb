puts "Enter your comma separated list of daily stock prices..."
wk_day_prices = gets.chomp.split(",")
wk_day_prices.each_with_index { |x,i| wk_day_prices[i] = x.to_i}

def  stock_picker wk_day_prices
  best_pair = [0,0]
  max_profit = 0 
  i = 0

  wk_day_prices.each_with_index do|price, j|
    if j < wk_day_prices.length - 1
    	 
    	i += 1
    	if wk_day_prices[i..-1].max - price > max_profit
    	  best_pair[0] = j
    	  best_pair[1] = wk_day_prices[i..-1].index(wk_day_prices[i..-1].max) + i
 		  max_profit = wk_day_prices[i..-1].max - price     
 	   	end
 	end
  end
puts "The best pair is #{best_pair} for a profit of #{max_profit}"
end

##stock_picker([17,3,6,9,15,8,6,1,10])
stock_picker(wk_day_prices)