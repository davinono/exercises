function find_longest_substring_without_repeating_characters(inputString) {
	var conunterOfCharacter = 0;
	var temporaryLongestString = "";
	var actualLongestString = "";
	var indexOfRepeeatedChar = 0;

	while (conunterOfCharacter < inputString.length) {
		if (temporaryLongestString.includes(inputString[conunterOfCharacter])) {
			indexOfRepeeatedChar = temporaryLongestString.indexOf(inputString[conunterOfCharacter]) + 1;
			if (actualLongestString.length < temporaryLongestString.length) {
				actualLongestString = temporaryLongestString;
				temporaryLongestString = temporaryLongestString.substring(indexOfRepeeatedChar);
				temporaryLongestString += inputString[conunterOfCharacter];
			} else {
				temporaryLongestString = temporaryLongestString.substring(indexOfRepeeatedChar);
				temporaryLongestString += inputString[conunterOfCharacter];
			}
		} else {
			temporaryLongestString += inputString[conunterOfCharacter]
			if (actualLongestString.length < temporaryLongestString.length) {
				actualLongestString = temporaryLongestString;
			}
		}
		conunterOfCharacter += 1;
	}
	return actualLongestString;
}

console.log(find_longest_substring_without_repeating_characters("nasoakdnalllsandlnaiwwwnnkss"))