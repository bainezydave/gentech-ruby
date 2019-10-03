# Without using inbuilt Ruby array methods, write your method (find_position)
# that returns the first index of a digit in an array, and nil if the digit is
# not in the array. Your method will accept two inputs, an array, and the digit to be found.

# e.g.
# input_array = [12, 4, 10, 6, 7, 9, 11, 23, 33]
# find_position(input_array, 9)
# Expected result: 5

input_array = [12, 4, 10, 6, 7, 9, 11, 23, 33]

def find_position(input_array, digit)

    index = 0

    input_array.each do

        index += 1

        val = input_array[index]

        if val == digit
            return index
        end
    end
end

puts find_position(input_array, 11)