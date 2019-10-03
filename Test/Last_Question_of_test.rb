class Allergies
    def initialize(score)
        @score = score
        @score_hash = {
            "eggs"         => 1,
            "peanuts"      => 2, 
            "shellfish"    => 4, 
            "strawberries" => 8, 
            "tomatoes"     => 16, 
            "chocolate"    => 32, 
            "pollen"       => 64, 
            "cats"         => 128
        }
    end

    # Return true or false from the bitwise calculation 
    def allergic_to?(allergy)  # "cat", "strawberry" etc
        return ( @score_hash[allergy] & @score != 0 )
    end

    # Select only the keys from the hash where the key eqauls true through the 
    # "allergic_to?" method. Loop over the selected keys and print them to screen.
    def list
        @score_hash.each{ |allergy, allergy_value|
            if ( allergic_to?(allergy) )
                puts "You are allergic to #{allergy}"
            end
        }
    end
end

system "clear"
jo = Allergies.new(34)
puts jo.allergic_to?("shellfish") ? "Yes" : "No"
jo.list