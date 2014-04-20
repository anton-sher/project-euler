def cancel_digit (a, b)
	common = a.to_s.split(//) & b.to_s.split(//)
	if common.length == 1 then
		c = common[0]
		return nil if c == '0'
		return [a.to_s.sub(c, '').to_i, b.to_s.sub(c, '').to_i]
	else
		return nil
	end
end

def frac_equal(a, b)
	return false if (a == nil or b == nil)
	return a[0] * b[1] == b[0] * a[1]
end
