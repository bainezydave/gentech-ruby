class RestaurantOrder
    attr_reader :name, :bill
    def initialize(name)
        @name = name
        @bill = 0
    end

    def welcome_message
        puts "Welcome to Dave's Kitchen. Place your oder by
        entering the item name & type 'exit' to leave the app."
    end

    def menu
        @menu = {
            "1. Nachos" => 15,
            "2. Tacos" => 12,
            "3. Chips" => 5
        }

        @menu_list = {
            1 => 15,
            2 => 12,
            3 => 5
        }

        @menu.each{|item, price| puts "#{item}________#{price}"}
    end

    def get_item_price
        @item_price = @menu_list[@user_choice]
    end

    def get_quantity
        puts "How many would you like? Hit 'q' to exit"
        @qty = gets.chomp.to_i
    end

    def order_bill
        @bill = @bill + (@qty * @item_price)
    end

    def place_order(user_choice)
        @user_choice = user_choice
        get_item_price
        get_quantity
        order_bill
    end
end