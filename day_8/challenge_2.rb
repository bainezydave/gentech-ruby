module VehicleRefuel
    def refuel(fuel)
        @max_car_fuel = 50
        @max_bike_fuel = 15

        vehicle = self.class.to_s

        if vehicle == "Car"
            if (@fuel_amount + fuel) >= @max_car_fuel
                @fuel_amount = @max_car_fuel
            end

        elsif vehicle == "Motorbike"
            if (@fuel_amount + fuel) >= @max_bike_fuel
                @fuel_amount = @max_bike_fuel
            end
        else
            @fuel_amount += fuel
        end
    end
end

module VehicleWheelie
    def wheelie
        puts "#{make} #{model} is doin' a wheelie."
    end
end

module VehicleWindows
    def wind_up_windows
        puts "#{make} #{model} windows are now up."
    end
end

module VehicleFuel
    def fuel_level
        puts "#{make} #{model} has #{@fuel_amount}L of fuel left."
    end
end

class Vehicle
    attr_accessor :make, :model

    def initialize(make, model)
        @make = make
        @model = model
        @fuel_amount = 0
    end

    include VehicleRefuel
    include VehicleFuel
end

class Car < Vehicle
    include VehicleWindows
end

class Motorbike < Vehicle
    include VehicleWheelie
end

car1 = Car.new("Honda", "Civic")
bike1 = Motorbike.new("HarleyDavidson", "Low Rider")

system "clear"

car1.refuel(25)
car1.refuel(60)
car1.wind_up_windows
car1.fuel_level

bike1.refuel(22)
bike1.wheelie
bike1.fuel_level
