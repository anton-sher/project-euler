require './p32-pandigital.rb'
require './project-euler.rb'

pandigitals = []
for n in 1..9999 do
	m = 0
	a = 1
	while number_of_digits(m) < 9 do
		q = n * a
		m = m * (10 ** number_of_digits(q)) + q
		a += 1
	end
	pandigitals << m if is_pandigital_to(m, 9)
end

print pandigitals, "\n"
printf "The answer is %d\n", pandigitals.max
