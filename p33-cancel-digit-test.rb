require 'minitest/autorun'

require './p33-cancel-digit.rb'

class TestCancelDigit < MiniTest::Unit::TestCase
	def test_cancel
		assert_equal [4, 8], cancel_digit(49, 98)
	end
	
	def test_frac_equal
		assert frac_equal([49, 98], cancel_digit(49, 98))
		assert !frac_equal([1,2], [3,4])
	end
end
