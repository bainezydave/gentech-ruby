class Vehicle
    attr_accessor :make, :model, :max_fuel

    def initialize(make, model, max_fuel)
        @make = make
        @model = model
        @litres = 0
        @max_fuel = max_fuel
    end

    def refuel(litres)
        @litres = (litres < @max_fuel )? litres : @max_fuel
    end

    def fuel_levels
        puts "I have #{@litres} in my tank"
    end

end

class Car < Vehicle
    def wind_up_windows
        puts "I can wind up windows"
    end
end

class Motorbike < Vehicle
    attr_accessor :bikers_gear
    def initialize(make, model, max_fuel)
        super
        @bikers_gear = ['helmet']
    end

    def wheelie
        puts "I can pull a wheelie"
    end

end

car1 = Car.new("BMW", "Z-series", 50)
bike1 = Motorbike.new("Harley Davidson", "Low Rider", 15)

# car1.refuel(30)
# car1.fuel_levels
# bike1.refuel(10)
# bike1.fuel_levels
system "clear"
puts bike1.model