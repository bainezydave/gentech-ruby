
def reverse_string(string)

    string_array = string.chars

    reversed_string = []

    string_array.each { |i|

        reversed_string << string_array[-1]

        string_array[-1].delete

    }

    return reversed_string
end


puts reverse_string("Test")
