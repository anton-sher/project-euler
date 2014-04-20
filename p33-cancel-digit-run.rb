require './p33-cancel-digit.rb'
require './project-euler-functions.rb'
require 'set'

cancelable = Set.new
for a in 10..99 do
	for b in (a+1)..99 do
		cancelable << [a, b] if	frac_equal([a,b], cancel_digit(a,b))
	end
end

nom = 1
den = 1
cancelable.each{|frac|
	nom *= frac[0]
	den *= frac[1]
}

print cancelable.to_a; puts
printf "The answer is %d, fraction was %d/%d\n", den / gcd(nom, den), nom, den
