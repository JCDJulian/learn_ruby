#pig latin translator

def translate(string)
	#multiple words
	if string.include? " "
		words = string.split
		words.each{|i| translate(i)}
		pig_latin = words.join(" ")
		return pig_latin
	#vowels
	elsif string[0] == ('a') or string[0] == ('e') or string[0] == ('i') or string[0] == ('o') or string[0] == ('u')
		return string << 'ay'
	#'qu' clause
	elsif string[0] == 'q' and string[1] == 'u'
		string << string[0..1] + 'ay'
		string.slice!(0,2)
		return string
	#counts qu as a consontant even it's preceded by another consonant
	elsif is_consonant(string[0]) and string[1] == 'q' and string[2] == 'u'
		string << string[0..2] + 'ay'
		string.slice!(0,3)
		return string
	#three consonants
	elsif is_consonant(string[0]) and is_consonant(string[1]) and is_consonant(string[2])
		string << string[0..2] + 'ay'
		string.slice!(0,3)
		return string
	
	#two consonants
	elsif  is_consonant(string[0]) and is_consonant(string[1])
		string << string[0..1] + 'ay'
		string.slice!(0,2)
		return string
	
	#one consonant
	else
		string << string[0] + 'ay'
		string.slice!(0)
		return string
	end
end

def is_consonant(char)
	if char != ('a') and char != ('e') and char != ('i') and char != ('o') and char != ('u')
		return true
	else
		return false
	end
end