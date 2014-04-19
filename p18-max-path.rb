file = File.new(ARGV[0])

rows = []
while (line = file.gets) do
  row = [0]
  line.split(' ').map(&:to_i).each{|i| row << i}
  row << 0
  rows << row
end

rows.each{|row| print row; print "\n"}

for r in (1..rows.length-1) do
  row = rows[r]
  pre = rows[r-1]
  for p in (1..row.length-2) do
    sl = row[p] + pre[p-1]
    sr = row[p] + pre[p]
    row[p] = [sl, sr].max
  end
end

rows.each{|row| print row; print "\n"}
puts rows[rows.length-1].max
