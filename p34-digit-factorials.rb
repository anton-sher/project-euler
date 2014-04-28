require './project-euler.rb'

$fac = (0..9).map{|i| factorial(i)}.to_a

numbers = []
for n in (3..1000000) do
	m = n
	sd = 0
	loop do
		sd += $fac[m%10]
		m /= 10
		break if m == 0
	end
	if sd == n then
		puts n
		numbers << n
	end
end

print numbers; puts
printf "Answer is %d\n", numbers.reduce(:+)
