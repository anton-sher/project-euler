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

def is_prime(n)
	return false if n <= 1
	for d in (2..(Math.sqrt(n).to_i)) do
		return false if n % d == 0
	end
	return true
end

def gcd (a, b)
	return gcd(b, a) if a < b
	r = a % b
	return b if r == 0
	return gcd(b, r)
end

def factorial n
	return 1 if n == 0
	return (1..n).reduce(:*)
end

def number_of_digits n
	return 1 if n == 0
	return Math.log(n, 10).to_i + 1
end
