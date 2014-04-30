require './project-euler.rb'

def is_goldman_composite n
	i = 1
	loop do
		m = n - 2 * i * i
		break if m <= 1
		return true if is_prime m
		i += 1
	end
	return false
end
