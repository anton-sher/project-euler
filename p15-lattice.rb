sz = 20
grid = Array.new(sz+1){Array.new(sz+1)}

for i in (0..sz) do
  grid[0][i] = 1
  grid[i][0] = 1
end

for row in (1..sz) do
  for col in (1..sz) do
    grid[row][col] = grid[row - 1][col] + grid[row][col - 1]
  end
end

puts grid[sz][sz]
