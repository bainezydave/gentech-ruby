cocktails_count = 3
cocktails_cost = 8
cocktails_sell = 22

beers_count = 6
beers_cost = 3
beers_sell = 12

waters_count = 2
waters_cost = 0.15
waters_sell = 6

puts "What would you like to drink?"
val = gets.chomp

if val.include? "cocktail"
    cocktails_count += 1
end

if val.include? "beer"
    beers_count += 1
end

if val.include? "water"
    waters_count += 1
end

puts "The order is #{cocktails_count} cocktails, #{beers_count} beers & #{waters_count} waters."

cocktails_profit = cocktails_count * (cocktails_sell - cocktails_cost)

beers_profit = beers_count * (beers_sell - beers_cost)

waters_profit = waters_count * (waters_sell - waters_cost)

total_profit = sprintf("$%2.2f", cocktails_profit + beers_profit + waters_profit)

puts "Total Profit is #{total_profit}"