# @param {String} s
# @return {String}

def longest_palindrome_in_string(string_example)
    test_palindrome = ""
    shortened_string = string_example
    longest_palindrome = ""
    current_character = 0
    second_counter = 1
    
    while current_character < string_example.length
        test_palindrome = string_example[current_character]
        while second_counter <= shortened_string.length && shortened_string[second_counter] != nil
            test_palindrome += shortened_string[second_counter]
            second_counter +=1
            if test_palindrome == test_palindrome.reverse
                if longest_palindrome.length < test_palindrome.length
                    longest_palindrome = test_palindrome
                end
            end
        end
        shortened_string = shortened_string[1..-1]
        second_counter = 1
        current_character += 1
        test_palindrome = ""
    end
    
    puts longest_palindrome
end

puts longest_palindrome_in_string("aoasknebexyzyxaoinaawoe")