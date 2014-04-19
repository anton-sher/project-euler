file = File.new("p11-grid.txt", "r")
numbers = []
while (line = file.gets)
  row = []
  line.split(" ").each{|i| row << i.to_i}
  numbers << row
end
file.close

printf "read %d rows each %d nums\n", numbers.length, numbers[0].length

numbers.each{|row|
  row.each{|n|
    printf "%02d ", n
  }
  print "\n"
}

def mul(arr,x,y,ix,iy,p)
  m = 1
  (0..3).each{|i|
    n = arr[x + ix * i][y + iy * i]
    printf "%d ", n if p
    m *= n
  }
  puts if p
  return m
end

printf "example had %d\n", mul(numbers, 6, 8, 1, 1, true)

max = 0
mi = 0
mj = 0
r = ""
ar = []

for i in 0..(numbers.length - 1) do
  for j in 0..(numbers[0].length - 1) do
    if i >= 3 and j + 3 < numbers[0].length  then
      dm = mul(numbers, i, j, -1, 1, false)
      if dm > max then
        max = dm
        mi = i
        mj = j
        r = "dm"
        ar = [numbers[i][j], numbers[i-1][j+1], numbers[i-2][j+2],numbers[i-3][j+3]]
      end
    end
    if i + 3 < numbers.length then
      if j + 3 < numbers[0].length then
        d = mul(numbers, i, j, 1, 1, false)
        if d > max then
          max = d
          mi = i
          mj = j
          r = "d"
          ar = [numbers[i][j], numbers[i+1][j+1], numbers[i+2][j+2],numbers[i+3][j+3]]
        end
      end
      v = mul(numbers, i, j, 1, 0, false)
      if v > max then
        max = v
        mi = i
        mj = j
        r = "v"
        ar = [numbers[i][j], numbers[i+1][j], numbers[i+2][j],numbers[i+3][j]]
      end
    end
    if j + 3 < numbers.length then
      h = mul(numbers, i, j, 0, 1, false)
      if h > max then
        max = h
        mi = i
        mj = j
        r = "h"
        ar = [numbers[i][j], numbers[i][j+1], numbers[i][j+2],numbers[i][j+3]]
      end
    end
  end
end

printf "maximum is %d at %d,%d r=%s\n", max, mi, mj, r
print ar
puts
printf "check: %d\n", ar[0]*ar[1]*ar[2]*ar[3]
