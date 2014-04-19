def divide (a,b)
	whole = a / b
	res = whole.to_s + "."
	r = a % b
	loop do
		r *= 10
		digit = r / b
		r = r % b
		res += digit.to_s
		break if r == 0 or res.length >= 10
	end
	return res
end
