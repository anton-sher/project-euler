require './p32-pandigital.rb'
require 'set'

start = Time.now

products = Set.new
for a in (1..9999) do
	for b in (1..9999) do
		m = a * b
		n = m.to_s + a.to_s + b.to_s
		products << m if is_pandigital_to(n, 9)
		break if n.length > 9
	end
end

print products.sort; puts
printf "Total time: %d seconds\n", (Time.now - start).to_i
printf "The answer is %d\n", products.reduce(:+)
