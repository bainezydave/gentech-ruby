def is_valid(choice)
    if choice == "rock" || choice == "r"
        return 1
    elsif choice == "paper" || choice == "p"
        return 2
    elsif choice == "scissors" || choice == "s"
        return 3
    else
        return 0
    end
end

def player_turns(player)
    system "clear"
    puts "#{player}, It is your turn!"
    puts "Choose Rock, Paper or Scissors..."
    val = is_valid(gets.chomp)
    if val === 0
        puts "Choice is not valid, try again #{player}!"
        player_turns(player)
    else
        system "clear"
        return val
    end
end


puts "Welcome to Rock, Paper, Scissors!"

puts "Player 1 set your name!"
player_1 = gets.chomp

puts "Player 2 set your name!"
player_2 = gets.chomp


# Game Begin
player_1_choice = player_turns(player_1)

player_2_choice = player_turns(player_2)


if player_1_choice === player_2_choice
    puts "Game Tied! No points to either player"
elsif player_1_choice == 1 && player_2_choice == 2
    puts "nejf"
end