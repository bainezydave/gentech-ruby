### Challenge 1 - Easy
### Wishlist App
# Create an app that asks the user what they want and display a list of everything that they want.
# Ideally this app should repeat until the user chooses to quit.
# So there should be:
#   - a loop to keep the app running that simply asks for user input
#   - a method with a parameter that adds the user input to an array
#   - a method to display the contents of an array
# Global variables may be helpful here!

$list = []

def wish_list(item)
    if item.include? "nothing"
        puts "Hellooo"
        return "break"
    else
        $list.push(item)
    end
end


puts "What do you want?"
wish_list(gets.chomp.to_str)


loop do
    puts "What else do you want?"
    wish_list(gets.chomp.to_str)
end

puts "Your wish list is #{$list}"