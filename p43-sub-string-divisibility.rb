#!/usr/bin/env ruby

require './project-euler.rb'

seq = (0..9).to_a

sum = 0

while seq do
	s = seq.inject(""){|acc, val| acc += val.to_s}
	first = seq[0]
	seq = next_permutation seq
	next if first == 0
	next if s[1,3].to_i % 2 != 0
	next if s[2,3].to_i % 3 != 0
	next if s[3,3].to_i % 5 != 0
	next if s[4,3].to_i % 7 != 0
	next if s[5,3].to_i % 11 != 0
	next if s[6,3].to_i % 13 != 0
	next if s[7,3].to_i % 17 != 0
	puts s
	sum += s.to_i
end

puts sum
