def divide (a,b)
	whole = a / b
	res = whole.to_s + "."
	whole_ofs = res.length
	r = a % b
	prev = []
	loop do
		prev << r
		r *= 10
		digit = r / b
		res += digit.to_s
		r = r % b
		if (pos = prev.find_index r) then
			start = whole_ofs + pos
			res = res[0..(start-1)] + '(' + res[start..-1] + ')'
			break
		end
		break if r == 0 or res.length >= 10
	end
	return res
end
