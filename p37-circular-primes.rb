require './project-euler.rb'

def is_truncatable_prime(n)
	l = n
	while l > 0
		return false if !is_prime(l)
		l /= 10
	end
	d = 10 ** (number_of_digits(n) - 1)
	r = n
	while d > 0
		return false if !is_prime(r)
		r = r % d
		d /= 10
	end
	return true
end
