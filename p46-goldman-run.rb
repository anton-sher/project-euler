require './p46-goldman.rb'

n = 2

loop do
	m = 2 * n + 1
	n += 1
	if !is_prime(m) and !is_goldman_composite(m) then
		puts m
		break
	end
end
