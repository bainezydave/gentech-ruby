# Use the colorize gem
# get temperature from user
# color text as follows:
# > 30, .red
# > 20, .yellow
# > 10, .cyan
# < 10, .blue
# convert temperature to Farenheit

require 'colorize'

puts "What is the current tempereture in Celsius?"
ct_c = gets.chomp.to_i
ct_f = (ct_c * 9.0/5.0) + 32

color = ct_c > 30 ? "red" : ct_c > 20 ? "yellow" : ct_c > 10 ? "cyan" : "blue"
puts "The current temp in Fahrenheit is #{ct_f}\xC2\xB0F".colorize(:"#{color}")