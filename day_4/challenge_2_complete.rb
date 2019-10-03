predefined_high_score = 100

puts "What is your score today?"
score = gets.chomp.to_i

case score <=> 100
when -1
    puts "You need to be more awesome!"
when 1
    puts "You are the best!"
when 0
    puts "You are as awesome as everyone else."
end