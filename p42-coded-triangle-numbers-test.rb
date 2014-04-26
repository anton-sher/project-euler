#!/usr/bin/env ruby
require 'minitest/autorun'
require './p42-coded-triangle-numbers.rb'

class TriangleNumberTest < MiniTest::Unit::TestCase
  def test_triangle_number
	assert_equal 6, triangle_number(3)
	assert_equal 10, triangle_number(4)
  end

  def test_is_tri_num
	assert is_triangle_number(triangle_number(4))
	assert is_triangle_number(triangle_number(6))
  end

  def test_sky
	assert_equal 55, word_value("SKY")
  end
end
