def find_longest_substring_without_repeating_characters(input_string)
	counter_of_character = 0
	temporary_longest_character = ""
	actual_longest_character = ""

	while counter_of_character < input_string.length
		if temporary_longest_character.include? input_string[counter_of_character]
			index_of_temporary_longest_string = temporary_longest_character.index(input_string[counter_of_character]) + 1
			if actual_longest_character.length < temporary_longest_character.length
				actual_longest_character = temporary_longest_character
				temporary_longest_character = temporary_longest_character[index_of_temporary_longest_string..-1]
				temporary_longest_character += input_string[counter_of_character]
			else
				temporary_longest_character = temporary_longest_character[index_of_temporary_longest_string..-1]
				temporary_longest_character += input_string[counter_of_character]
			end
		else
			temporary_longest_character += input_string[counter_of_character]
			if actual_longest_character.length < temporary_longest_character.length
				actual_longest_character = temporary_longest_character
			end
		end
		counter_of_character += 1
	end

	puts ("Longest String: " + actual_longest_character + " Length: " + actual_longest_character.length.to_s)
end

puts find_longest_substring_without_repeating_characters("nasoakdnalllsandlnaiwwwnnkss")