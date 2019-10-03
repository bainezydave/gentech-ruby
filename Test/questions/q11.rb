# You have access to two variables: raining (boolean) and temperature (integer).
# If it's raining and the temperature is less than 15 degrees, print to the screen
# "It's wet and cold", if it is less than 15 but not raining print "It's not
# raining but cold". If it's greater than 15 but not raining print "It's warm
# but not raining", and otherwise tell them "It's warm and raining".

# "It's wet and cold"
# "It's not raining but cold"

# "It's warm and raining"
# "It's warm but not raining"


raining = true
temp = 22

if (raining && temp < 15)
    puts "It's wet and cold"

elsif (raining && temp > 15)
    puts "It's not raining but cold"

elsif (!raining && temp < 15)
    puts "It's warm but not raining"
else
    puts "It's warm and raining"
end