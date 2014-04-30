require 'minitest/autorun'
require './p47-prime-factors.rb'

class TestPrimeFactors < MiniTest::Unit::TestCase
	def test3
		assert has_distinct_prime_factors 644, 3
		assert has_distinct_prime_factors 645, 3
		assert has_distinct_prime_factors 646, 3
	end
end
