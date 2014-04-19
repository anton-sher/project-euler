def non_inc_tail list
	pos = list.length - 1
	while pos > 0 and list[pos - 1] > list[pos]
		pos -= 1
	end
	return list[pos..-1]
end

def next_permutation list
	list = list[0..-1]
	# find the longest non-increasable tail
	pos = list.length - 1
	while pos > 0 and list[pos - 1] > list[pos]
		pos -= 1
	end
	if pos == 0 then
		return nil
	end
	# swap the number preceding it with the smallest bigger
	nextStart = pos
	for i in (pos..(list.length - 1))
		if list[i] > list[pos - 1] and list[i] < list[nextStart] then
			nextStart = i
		end
	end
	t = list[pos - 1]
	list[pos - 1] = list[nextStart]
	list[nextStart] = t
	# sort the rest of the tail ascending
	return list[0,pos] + list[pos..-1].sort
end

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
