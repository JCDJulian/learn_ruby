#core functions

def add(n1, n2)
	return (n1 + n2)
end

def subtract (n1, n2)
	return (n1 - n2)
end

def sum(array)
	sum = 0
	array.each {|x| sum += x}
	return sum
end

#bonus assignments

def multiply(n1,n2)
	return(n1 * n2)
end

def power(n1,n2)
	return(n1**n2)
end

def factorial(n)
	fact = n
	while (n != 0)
		fact = fact * (n - 1)
	end
	return fact
end
