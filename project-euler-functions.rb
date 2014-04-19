def sum_proper_divisors(n)
	s = 1
	i = 2
	while i * i < n do
		s += i + n/i if n % i == 0 
		i += 1
	end
	s += i if i * i == n
	return s
end
