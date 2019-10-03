# The CEO of a supermarket chain has started a project to assist shop clerks
# during the checkout process. Write a method that takes two arguments, the
# cash amount and the item price, and returns a number representing the correct change.

def change_calc(cash_amount, item_price)

    # Item price can be eqaul to 0 in case it is free.

    if (item_price >= 0 && cash_amount > 0)

        if (item_price < cash_amount)

            change = cash_amount.to_f - item_price.to_f

            return change.to_f

        else
            return "Item costs more than $#{cash_amount.to_f}"
        end
    end
end

puts change_calc(0, 1.50)