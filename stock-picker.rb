def stock_picker(days)
    amount_of_days = days.length
    highest_profit, highest_sell_date, highest_buy_date = 0
    while amount_of_days > 0 do
        days.each_with_index do |value, index|
            break if (amount_of_days-1) == index 
            trial = days[amount_of_days - 1] - days[index]
            if trial > highest_profit
                highest_profit = trial
                highest_sell_date = amount_of_days - 1
                highest_buy_date = index
            end
        end
        amount_of_days -= 1
    end
    return [highest_buy_date, highest_sell_date]
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])