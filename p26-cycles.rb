def divide (a,b)
	whole = a / b
	res = whole.to_s + "."
	r = a % b
	loop do
		prev = r
		r *= 10
		digit = r / b
		res += digit.to_s
		r = r % b
		if r == prev then
			res = res[0..-2] + '(' + res[-1] + ')'
			break
		end
		break if r == 0 or res.length >= 10
	end
	return res
end
