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

def is_pandigital_to n, d
	n.to_s.split(//).map(&:to_i).sort == (t = *(1..d))
end

def is_pandigital_0_to n, d
	n.to_s.split(//).map(&:to_i).sort == (t = *(0..d))
end

def is_pandigital n
	is_pandigital_to(n, number_of_digits(n))
end

def is_pandigital_0 n
	is_pandigital_0_to(n, number_of_digits(n) - 1)
end

def non_inc_tail list
	pos = list.length - 1
	while pos > 0 and list[pos - 1] > list[pos]
		pos -= 1
	end
	return list[pos..-1]
end

def next_permutation list
	list = list[0..-1]
	# find the longest non-increasable tail
	pos = list.length - 1
	while pos > 0 and list[pos - 1] > list[pos]
		pos -= 1
	end
	if pos == 0 then
		return nil
	end
	# swap the number preceding it with the smallest bigger
	nextStart = pos
	for i in (pos..(list.length - 1))
		if list[i] > list[pos - 1] and list[i] < list[nextStart] then
			nextStart = i
		end
	end
	t = list[pos - 1]
	list[pos - 1] = list[nextStart]
	list[nextStart] = t
	# sort the rest of the tail ascending
	return list[0,pos] + list[pos..-1].sort
end
