require 'minitest/autorun'

require './p32-pandigital.rb'

class TestPandigital < MiniTest::Unit::TestCase
	def test_123
		assert_equal true, is_pandigital_to(123, 3)
	end

	def test_124
		assert_equal false, is_pandigital_to(124, 3)
	end

	def test_321
		assert_equal true, is_pandigital_to(321, 3)
	end
end
