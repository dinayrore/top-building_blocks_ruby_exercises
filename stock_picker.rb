# # stock_picker application
def stock_picker(prices)
	buy_day = 0
	sell_day = 0
	profit = 0

	prices[0..-2].each_with_index do |buy, buy_index| # look through the prices excluding first and last
		prices[(buy_index + 1)..-1].each_with_index do |sell, sell_index| # look through the prices excluding first and last
			if profit < sell - buy
				profit = sell - buy
				buy_day = buy_index
				sell_day = sell_index + (buy_index + 1)
			end
		end
	end
  days = { 1 => "Monday", 2 => "Tuesday", 3 => "Wednesday", 4 => "Thursday", 5 => "Friday", 6 => "Saturday", 7 => "Sunday" }
	puts "Buy: #{days[buy_day]} at the price of $#{prices[buy_day]}"
  puts "Sell: #{days[sell_day]} at the price of $#{prices[sell_day]}"
  puts "Profit: $#{prices[sell_day] - prices[buy_day]}"
end

def main
  prices = Array.new
  count = 0
  while count < 7
    print "Please provide a products price: "
    price = gets.chomp.to_i
    prices << price
    count += 1
  end
  stock_picker(prices)
end

main if __FILE__ == $PROGRAM_NAME
