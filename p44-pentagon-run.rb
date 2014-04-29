#!/usr/bin/env ruby

require './p44-pentagon.rb'

found = false
for a in (1..10000) do
	break if found
	pa = pentagonal a
	print a, " "
	(a-1).downto(1).each {|b|
#	for b in ((a+1)..(pa/3+1)) do
		break if found
		pb = pentagonal b
		s = pa + pb
		d = pa - pb
		if is_pentagonal(s) \
		and is_pentagonal(d) \
		then
			puts
			printf("a=%d, b=%d, pa=%d, pb=%d, d=%d, s=%d\n", a, b, pa, pb, d, s)
			puts d
			found = true
		end
#	end
	}
end
