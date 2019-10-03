# We are going to create a fun fact generator using the 'faker' gem -> https://github.com/stympy/faker
# First, create a directory called fun_fact_generator, and create a file inside that directory
# Create a loop/method that will greet the user and ask if they want a fun fact
# Use faker to display the fact, then ask the user if they would like another fact
# If they want another fact, give them another one, else exit the app with a farewell message
# Explore the wonderful world of gems -> https://rubygems.org/ <- and select two other gems to make your app super cool!!

require 'faker'

loop do

    puts "Would you like a fun fact?"
    ans = gets.chomp

    if ans.include? "n"
        puts "Farewell"
        break
    end
    system "clear"
    puts Faker::ChuckNorris.fact

end

