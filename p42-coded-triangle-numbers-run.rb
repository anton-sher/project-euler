#!/usr/bin/env ruby
require './p42-coded-triangle-numbers.rb'

file = File.new 'words.txt'

words = []
while line = file.gets do
	line.split(',').map{|w| w[1,w.length - 2]}.each{|w| words << w}
end

count_triangle_words = 0
words.each{|w| 
	if is_triangle_number(word_value(w)) then
		count_triangle_words += 1
	end
}

puts count_triangle_words	
