require './project-euler.rb'

def circulate n
	s = n.to_s
	l = s.length
	res = []
	l.times{
		res << s.to_i
		s = s[1..-1] + s[0]

	}
	return res
end

circular_numbers = []

for p in (2..1000000) do
	c = circulate p
	match = true
	for a in c do
		if !is_prime(a) then
			match = false
			break
		end
	end
	circular_numbers << p if match
	if p % 100000 == 0 then
		puts "processed " + p.to_s
	end
end

print circular_numbers; puts
printf "The answer is %d\n", circular_numbers.length 
