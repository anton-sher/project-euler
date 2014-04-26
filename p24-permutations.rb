require './project-euler-functions.rb'

def gen_permutations_fast n
	list = []
	(0..(n-1)).each{|i| list << i}
	permutations = []
	while true
		permutations << list
		list = next_permutation list
		break if list == nil
	end
	return permutations
end

def gen_permutations_simple n
	return [[0]] if n == 1
	prev_permutations = gen_permutations_simple (n-1)
	permutations = []
	prev_permutations.each{|p|
		for i in (0..p.length)
			permutations << (p[0,i] + [n-1] + p[i..-1])
		end
	}
	return permutations.sort
end

def print_permutations permutations
	permutations.each{|p| print p; puts}
end

start = []
(0..9).each{|i| start << i}
999999.times{start = next_permutation start}
start.each{|i| print i}
puts
