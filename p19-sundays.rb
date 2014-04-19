def is_leap year
	return year % 400 == 0 || (year % 100 != 0 && year % 4 == 0)
end

$month_len = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

def days_in_month(month, year)
	 if month == 2 and is_leap year then
		 return 29
	 else
		 return $month_len[month-1]
	 end
end

day_of_week = 2
sundays = 0

for year in (1901..2000)
	for month in (1..12)
		if day_of_week == 7 then
			puts '1/' + month.to_s + '/' + year.to_s
			sundays += 1
		end
		day_of_week = (day_of_week - 1 + days_in_month(month, year)) % 7 + 1
	end
end

puts sundays
