def is_pandigital_to n, d
	n.to_s.split(//).map(&:to_i).sort == (t = *(1..d))
end
