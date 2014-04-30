require './p45-tri-pen-hex.rb'

n = 286

loop do
	t = triangular n
	if is_pentagonal(t) and is_hexagonal(t) then
		puts
		puts t
		break
	end
	n += 1
end
