#!/usr/bin/env ruby

require './project-euler.rb'

def pentagonal n
	n * (3 * n - 1) / 2
end

def is_pentagonal n
	n == pentagonal(Math.sqrt(2 * n / 3).to_i + 1)
end

