file = File.new('names.txt')

names = []

while (line = file.gets) do
	line.split(",").each{|w| names << w.gsub("\"", "")}
end

names = names.sort
s = 0
for i in (1..names.length) do
	name = names[i - 1]
	score = 0
	name.split(//).each{|c| score += c.ord - 'A'.ord + 1}
	s += i * score
end

puts s
