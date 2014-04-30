require './p47-prime-factors.rb'

n = 1
loop do
	if has_distinct_prime_factors(n, 4) and\
		has_distinct_prime_factors(n+1, 4) and\
		has_distinct_prime_factors(n+2, 4) and\
		has_distinct_prime_factors(n+3, 4) then
			puts n
			break
	end
	n += 1
end
