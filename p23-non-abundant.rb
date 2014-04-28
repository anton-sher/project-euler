require 'set'
require "./project-euler.rb"

def is_abundant n
	return n < sum_proper_divisors(n)
end

upper = 28123

$abundant = Set.new

for i in (1..upper)
	$abundant << i if is_abundant(i)
end

def is_sum_abundant(n)
	return false if n < 24
	$abundant.each{|a|
		if $abundant.include?(n - a)
			return true
		end
	}
	return false
end

not_expressable = []

for i in (1..upper)
	not_expressable << i if not is_sum_abundant (i)
end

puts not_expressable.reduce(:+)

