#!/usr/bin/env ruby
require './project-euler.rb'

result = []

# There are no 8- or 9-digit pandigital primes
list = (1..7).to_a

while list do
	p = list.inject("") {|s, d| s + d.to_s}.to_i
	result << p if is_prime p
	puts result.length if result.length > 0 and result.length % 100 == 0
	list = next_permutation list
end

print result.max.to_s + "\n"
