require 'minitest/autorun'
require './p26-cycles.rb'
class TestDivide < MiniTest::Unit::TestCase
	def test_divide_2
		assert_equal "0.5", divide(1,2)
	end

	def test_divide_3
		assert_equal "0.(3)", divide(1,3)
	end

	def test_divide_4
		assert_equal "0.25", divide(1,4)
	end

	def test_divide_5
		assert_equal "0.2", divide(1,5)
	end

	def test_divide_6
		skip "divide by 6"
		assert_equal "0.1(6)", divide(1,6)
	end

	def test_divide_7
		skip "divide by 7"
		assert_equal "0.(142857)", divide(1,7)
	end

	def test_divide_8
		assert_equal "0.125", divide(1,8)
	end

	def test_divide_9
		skip "divide by 9"
		assert_equal "0.(1)", divide(1,9)
	end

	def test_divide_10
		assert_equal "0.1", divide(1,10)
	end

	def test_divide_20
		assert_equal "0.05", divide(1,20)
	end
end

