require 'minitest/autorun'
require './p27-quadratic-primes.rb'

class TestQuadPrimes < MiniTest::Unit::TestCase
	def test_eulers_formula
		assert_equal 40, primes_count(1,41)
	end

	def test_80_formula
		assert_equal 80, primes_count(-79,1601)
	end
end
