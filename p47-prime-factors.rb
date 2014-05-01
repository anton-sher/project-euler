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

def has_distinct_prime_factors_or_more n, count
	c = 0
	for p in (2..n) do
		break if p > n
		if n % p == 0 then
			c += 1
			return true if c >= count
			while n % p == 0 do
				n /= p
			end
		end
	end
	return c >= count
end

def find_first_sparse m
	n = 0
	loop do
		n += m
		print n, " " if n % 1000 == 0
		if has_distinct_prime_factors(n, m) then
			first = n
			last = n
			while has_distinct_prime_factors(first - 1, m) and first > n - m do first -= 1 end
			while has_distinct_prime_factors(last + 1, m) and last < n + m do last += 1 end
			if last - first + 1 >= m then
				return first
			end
		end
	end
end

def find_first_brute_force m
	n = 1
	loop do
		print n, " " if n % 1000 == 0
		isnt = false
		for k in (0..(m-1))
			if not has_distinct_prime_factors(n + k, m) then
				isnt = true
				break
			end
		end
		if not isnt then
			return n
		end
		n += 1
	end
end
