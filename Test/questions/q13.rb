# Without using the inbuilt reverse method, implement a method that takes a
# single string argument and prints out the string in reverse.


def reverse_string (string)

    string_array = string.chars
    reversed_string = []

    position = 1

    string_array.each do

        reversed_string << string_array[-position]

        position += 1

    end

    puts reversed_string
end


reverse_string("hello")