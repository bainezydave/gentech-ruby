# include a peice of functionality into any class
module SpecificFunctionality
    def swim
        puts "I can swim"
    end

    def other_function
        puts "Some other functionality to be dropped into different classes."
    end

end

class Animal
    # def self.swim
    #   puts "i can swim"
    # end
end

class Fish < Animal
    include SpecificFunctionality
end

class Mammal < Animal

end

class Dog < Mammal
    include SpecificFunctionality
end

class Cat < Mammal
    include SpecificFunctionality
    undef swim
end


fish1 = Fish.new
dog1 = Dog.new
cat1 = Cat.new
fish1.swim
dog1.swim
cat1.swim