def cook(*arg)
    puts "How to cook #{arg[0]}"
    puts "Add water to saucepan"
    puts "Bring water to boil"
    puts "Add #{arg[0]}"
    puts "Cook for #{arg[1]} minutes"
end

cook("rice", 10)
cook("pasta", 15)