def d(n)
	s = 1
	i = 2
	while i * i < n do
		s += i + n/i if n % i == 0 
		i += 1
	end
	s += i if i * i == n
	return s
end

puts d(220)
puts d(284)

s = 0
for a in (2..10000) do
	b = d(a)
	c = d(b)
	if a == c and a != b then
		s += a
		puts a.to_s + ', ' + b.to_s
	end
end
puts s
