file = File.new('p13-input.txt')

numbers = []
while (line = file.gets) do
  numbers << line.to_i
end

sum = 0
numbers.each{|n| sum += n}

puts sum.to_s[0, 10]

