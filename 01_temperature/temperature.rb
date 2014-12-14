def ftoc(temp)
	celsius = (temp - 32) * (5.0/9.0)
	return celsius
end

def ctof(temp)
	fahrehnheit = ((temp * (9.0/5.0)) + 32)
	return fahrehnheit
end