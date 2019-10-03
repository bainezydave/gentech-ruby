system "clear"


begin
    puts "Enter a number"
    num1 = gets.chomp.to_i

    puts "Enter another number"
    num2 = gets.chomp.to_i

    puts "The division of 2 numbers is #{num1/num2}"

rescue
    loop do
        puts "The second number should not be 0"
    end
end

