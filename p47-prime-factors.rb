require './project-euler.rb'
require 'set'

def has_distinct_prime_factors n, count
	c = 0
	for p in (2..n) do
		break if p > n
		if n % p == 0 then
			c += 1
			return false if c > count
			while n % p == 0 do
				n /= p
			end
		end
	end
	return c == count
end
