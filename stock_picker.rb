def stock_picker(prices)
    buy_day = 0
    sell_day = 0
    max_profit = 0

    (0...prices.length).each do |i|
        (i+1...prices.length).each do |j|
            profit = prices[j] - prices[i]
            if profit > max_profit
                max_profit = profit
                buy_day = i
                sell_day = j
            end
        end
    end
    [buy_day, sell_day]
end

p stock_picker([17,3,6,9,15,8,6,1,10])