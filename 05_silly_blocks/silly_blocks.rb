def reverser
	if yield.include? " " #check for multiple words
		string = yield
		string = string.split
		string.each{|i| i.reverse!}
		reversed = string.join(" ")
		return reversed
	else
	yield.reverse
	end
end

def adder(n=1)
	yield + n
end

def repeater(n=1)
	n.times do
		yield
	end
end