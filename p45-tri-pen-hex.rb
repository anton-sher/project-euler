require './project-euler.rb'
require './p44-pentagon.rb'

def triangular n
	n * (n + 1) / 2
end

def is_triangular n
	m = (Math.sqrt(8 * n + 1).to_i - 1) / 2
	return n == triangular(m)
end

def hexagonal n
	n * (2 * n - 1)
end

def is_hexagonal n
	m = (Math.sqrt(8 * n + 1).to_i + 1) / 4
	return n == hexagonal(m)
end
