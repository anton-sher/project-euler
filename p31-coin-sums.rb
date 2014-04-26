$combinations = Hash.new

$coins = [1, 2, 5, 10, 20, 50, 100, 200]
def count_combinations_max_coin(n, max_coin)
	return 1 if n == 0
	return 0 if n < 0 
	cached = $combinations[[n,max_coin]]
	return cached if cached
	count = 0
	$coins.each{|coin|
		if coin <= max_coin and coin <= n then
			count += count_combinations_max_coin(n - coin, coin) 
		else
			break
		end
	}
	$combinations[[n,max_coin]] = count
	return count
end

def count_combinations n
	return count_combinations_max_coin(n, 200)
end
