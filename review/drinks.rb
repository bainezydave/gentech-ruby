# MVC architecture
class CafeModel
    # Every business logic or the data to be added, retrieved or deleted from 
    # the database must be coded in this class
    def initialize
        @drinks = {
            cappucino: 10,
            latte: 10,
            coke: 10
        }
    end
    
    # get the drink user has asked for
    def get_drink(drink_type)
        # if the drink exists return the drink to the user else return nil
        if(@drinks[drink_type] && @drinks[drink_type] > 0)
            return drink_type
        else
            return nil
        end
    end

    #show all the avialble drinks in the cafe
    def get_available_drinks
        drinks = []
        # loop through the drinks in the database(initilaize method and fetch 
        # its key value)
        @drinks.each do |key, value|
            if(value > 0)
                drinks.push(key)
            end
        end
        return drinks
    end
end

class CafeView
    # Any things that has to do with users interaction must be defined in the 
    # View class
    def greeting
        puts "Hi, How can I help you?"
    end

    def selection
        puts "enter (1) to view menu, enter (2) to place order."
        user_choice = gets.chomp.to_i
    end

    def show_menu(drinks)
        drinks.each do |drink|
            puts drink.capitalize
        end
    end

    def place_order
        # Get the order from the user and convert to symbol, which is the format
        # used in the hash.
        puts "What drink would you like?"
        order = gets.chomp.to_sym
    end

    def goodbye(drink_type)
        puts "Here is your #{drink_type}, see you later."
    end

    def wrong_answer
        puts "Wrong key, try again."
    end
end

class CafeController
    # its an intermediate between model and view, the code here directs which view
    # should be displayed to the user and what data must be retrieved from the model

    # Always keep your controller skinny.

    def initialize
        # Create a view and model object.
        @view = CafeView.new
        @model = CafeModel.new
    end

    def greet_and_get_selection
        # Greet the customer and get the customer selection.
        @view.greeting
        exit = false

        until exit
            user_selection = @view.selection
             
            # If the user selection was not 1 or 2 then ask again or show wrong key message.
            if(user_selection != 1 && user_selection != 2)
                @view.wrong_answer
            else
                exit = true
            end
        end

        return user_selection

    end

    def run 
        selection = greet_and_get_selection

        # If selection is 1, show menu. If selection was 2 place the order.
        if selection == 1
            # Get avialble drinks from the model.
            drinks = @model.get_available_drinks
            @view.show_menu(drinks)

        else
            # Place order.
            order = @view.place_order
            # Get the drink from the model.
            drink_recieved = @model.get_drink(order)

            if drink_recieved != nil
                @view.goodbye(drink_recieved)
            end
        end
    end
end

controller = CafeController.new
controller.run