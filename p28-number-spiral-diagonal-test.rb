require 'minitest/autorun'

require './p28-number-spiral-diagonal.rb'

class TestNumberSpiralDiag < MiniTest::Unit::TestCase
	def test_5
		assert_equal 101, sum_diag_numbers(5)
	end
end
