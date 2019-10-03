puts "What is your name?"
name = gets.chomp

puts "Hi #{name}! How old are you?"
age = gets.chomp.to_i

puts "Wow! You are #{age} years old. Congratulations!"

age_diff = 100 - age

if age < 100
    puts "#{name}, in #{age_diff} years you will be 100 years old!"
end