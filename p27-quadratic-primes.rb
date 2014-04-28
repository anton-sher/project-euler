require './project-euler.rb'

def primes_count (a, b)
	n = 0
	count = 0
	loop do
		p = n * n + a * n + b
		if is_prime(p) then
			count += 1
			n += 1
		else
			break
		end
	end
	return count
end

maxab = nil
maxprimes = 0
for a in (-999..999) do
	for b in (-999..999) do
		if (c = primes_count(a, b)) > maxprimes then
			maxprimes = c
			maxab = [a, b]
		end
	end
end

print maxab; puts
puts maxprimes
puts maxab[0] * maxab[1]
