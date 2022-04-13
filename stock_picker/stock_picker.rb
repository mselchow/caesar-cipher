def stock_picker(stock_prices)
  unless stock_prices.length > 1
    raise ArgumentError, "Must have at least two prices"
  end

  profit = 0
  buy_date = 0
  sell_date = 0

  stock_prices.each_with_index do |buy_price, buy_index|
    stock_prices.each_with_index do |sell_price, sell_index|
      if sell_index > buy_index
        if sell_price - buy_price > profit
          profit = sell_price - buy_price
          buy_date = buy_index
          sell_date = sell_index
        end
      end
    end
  end

  [buy_date, sell_date]
end