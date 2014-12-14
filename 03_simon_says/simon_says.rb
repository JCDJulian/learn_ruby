def echo(string)
	return string
end

def shout(string)
	return string.upcase
end

def repeat(string, num = 2)
	return ([string]*num).join(" ")
end

def start_of_word(string, num = 0)
	return string[0, num]
end

def first_word(string)
	words = string.split
	return words[0]
end

def titleize(string)
	words = string.split
	words[0].capitalize!#always capitalize first word
	words.each{|i| 
		if i != ("and") and i != ("or") and i != ("over") and i != ("the") #check if it is 'little word'
			i.capitalize!
		end
	}
	cap = words.join(" ")
	return cap
end
