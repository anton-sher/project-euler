def collatz_len n
  l = 1
  while n != 1 do
    if n % 2 == 0 then
      n = n / 2
    else
      n = 3 * n + 1
    end
    l += 1
  end
  return l
end

start = Time.new

i = 1
max = i
len = collatz_len i
while i <= 1000000
  cl = collatz_len i
  if cl > len then
    max = i
    len = cl
  end
  i += 1
end

printf "Number is %d, length is %d\n", max, len
printf "Total duration: %d sec\n", Time.now.to_i - start.to_i
