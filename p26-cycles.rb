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
		break if r == 0 
	end
	return res
end

def cycle_len s
	start = s.index('(')
	finish = s.index(')')
	if start and finish then
		finish - start - 1
	else
		0
	end
end
	
maxi = 0
maxc = 0
maxs = ""

for i in (2..999) do
	s = divide(1, i)
	c = cycle_len s
	if c > maxc then
		maxi = i
		maxc = c
		maxs = s
	end
end

printf "n = %d, len = %d, s = %s\n", maxi, maxc, maxs
