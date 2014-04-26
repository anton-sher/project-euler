require 'minitest/autorun'

require './p37-circular-primes.rb'

class TestCircularPrimes < MiniTest::Unit::TestCase
	def test_3797
		assert is_truncatable_prime(3797)
		assert is_truncatable_prime(797)
		assert is_truncatable_prime(37)
	end
end
