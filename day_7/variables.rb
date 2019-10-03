# name - Local variable
# $name - Global variable
# @name - Instance variable
# @@name - Class variable

# ======Local Var======

def greet_local
    name_local = "David"
    puts "My name is #{name_local}"
end

greet_local()

# ======Pass Var as Arg======

name_argument = "David"

def greet_argument(name_argument)
    puts "My name is #{name_argument}"
end

greet_argument(name_argument)


# ======Gloabl Var======

$name_global = "David"

def greet_argument
    puts "My name is #{$name_global}"
end




