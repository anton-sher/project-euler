#!/usr/bin/env ruby

require 'minitest/autorun'
require './p44-pentagon.rb'

class PentagonalTest < MiniTest::Unit::TestCase
	def test_is_penta
		for a in (1..10) do
			assert is_pentagonal(pentagonal(a))
		end
	end

	def test_penta
		assert_equal 1, pentagonal(1)
		assert_equal 5, pentagonal(2)
		assert_equal 12, pentagonal(3)
	end
end
