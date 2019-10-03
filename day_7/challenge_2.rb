### Challenge 2 - Easy
### Simple Bank
# This app is a very simple bank! Users should be able to use this bank to:
#   - deposit more money into their account
#   - withdraw some money from their account
#   - display their balance
#
# Extention twists:
#   - warn the user if their account is overdrawn (balance is less than 0)
#   - add extra parameters to the actions to let users choose specific accounts to work with (eg. savings, everyday, sharetrading, etc etc)
# Since every method is going to be working on the same variable, remember to use a global variable for any bank account balances!


savings_balance = 0
credit_balance = 0

puts "Would you like to 'deposit' or 'withdraw'?"
action = gets.chomp

puts "Would you like to #{action} using your 'savings' or 'credit' account?"
account = gets.chomp

puts "Enter the ammount you would like to #{action}:"
amount = gets.chomp.to_i

