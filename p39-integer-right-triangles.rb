def right_triangle_solutions p
	result = []
	for a in 2..(p/2) do
		for c in 1..a do
			b = p - a - c
			if b < a and c <= b and a ** 2 == b ** 2 + c ** 2 then
				result << [a, b, c]
			end
		end
	end
	result
end

print right_triangle_solutions(120), "\n"
nmax = 0
smax = 0
for i in 3..1000 do
	s = right_triangle_solutions(i).length
	if s > smax then
		smax = s
		nmax = i
	end
end

printf "The answer is %d\n", nmax
