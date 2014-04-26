def num_divisors n
  div = 1
  ndiv = 0
  while (div * div) < n do
    ndiv += 2 if n % div == 0
    div += 1
  end
  ndiv += 1 if div * div == n 
  return ndiv
end

print "5:",num_divisors(5)," ","28:",num_divisors(28),"\n"

nth = 1
n = 1

while num_divisors(n) <= 500 do
  nth += 1
  n += nth
end

printf "Triangular number with %d divisors is %d and has number %d\n", num_divisors(n), n, nth

