stockArray = [3,5,10,6,2,5,11,20,9]

def stockpicker(stockArray)
    # default values for buy,sell,profit
    buy = stockArray.index(stockArray.first)
    sell = stockArray.index(stockArray.last)
    profit = stockArray.last - stockArray.first
    # cycles through each price (to use as buy price)
    stockArray.each_index do |index|
        # cycles through prices of remaining days after buy day (to use as sell price)
        comparisonArray = stockArray[index+1..]
        comparisonArray.each_index do |comparisonindex|
            compProfit = comparisonArray[comparisonindex] - stockArray[index]
            # if profit is higher than default these become the new values
            if compProfit > profit
                buy = index
                sell = stockArray.find_index(comparisonArray[comparisonindex])
                profit = compProfit

            end
        end
    end


    p "Buy on day #{buy} and sell on day #{sell} for a profit of $#{profit}"
end

stockpicker(stockArray)
