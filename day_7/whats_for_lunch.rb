# I will NEVER eat a meal if it costs more 50 or more.
# I will eat a meal, regardless of taste, if it costs 30 or less.
# I will also eat a meal if it costs more than 30 and is tasty.

price = 50
tasty = true

# if price < 30 || (price.between?(30, 50) && tasty)
#     puts "I will eat!"
# else
#     puts "I will not eat!"
# end

text = price < 30 || (price.between?(30, 50) && tasty) ? "I will eat!" : "I will not eat!"
puts text