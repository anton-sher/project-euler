def sum_diag_numbers n
	sum = 1
	i = 1
	loop do
		i += 2
		break if i > n
		sum += 4 * i * i - 6 * (i - 1)
	end
	return sum
end

puts sum_diag_numbers 1001
