require './p37-circular-primes.rb'

n = 11
count = 0
sum = 0

while count < 11 do
	if is_truncatable_prime(n) then
		puts n
		sum += n
		count += 1
	end
	n += 2
end

printf "The answer is %d\n", sum
