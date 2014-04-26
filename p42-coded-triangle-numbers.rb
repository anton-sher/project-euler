#!/usr/bin/env ruby
def triangle_number n
	n * (n + 1) / 2
end

def is_triangle_number n
	n == triangle_number(Math.sqrt(2 * n).to_i)
end

def word_value w
	w.upcase.split(//).map(&:ord).map{|i| i - "A".ord + 1}.reduce(:+)
end
