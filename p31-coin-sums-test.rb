require 'minitest/autorun'

require './p31-coin-sums.rb'

class TestCoinSums < MiniTest::Unit::TestCase
	def test_1
		assert_equal 1, count_combinations(1)
	end

	def test_2
		assert_equal 2, count_combinations(2)
	end

	def test_3
		assert_equal 2, count_combinations(3)
	end

	def test_4
		assert_equal 3, count_combinations(4)
	end

	def test_5
		assert_equal 4, count_combinations(5)
	end
end
