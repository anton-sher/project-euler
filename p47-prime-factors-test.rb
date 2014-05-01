require 'minitest/autorun'
require './p47-prime-factors.rb'

class TestPrimeFactors < MiniTest::Unit::TestCase
	def test3
		assert has_distinct_prime_factors 644, 3
		assert has_distinct_prime_factors 645, 3
		assert has_distinct_prime_factors 646, 3
	end

	def test_brute
		assert_equal 14, find_first_brute_force(2)
		assert_equal 644, find_first_brute_force(3)
	end

	def test_sparse
		assert_equal 14, find_first_sparse(2)
		assert_equal 644, find_first_sparse(3)
	end
end
