#!/usr/bin/env ruby
# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)

  sum, sum_left = 0, 0

  sum = calc_sum(a)

  sum_left = 0
  a.each_index do |idx|

    sum_right = sum - sum_left - a[idx]

    return idx if sum_left == sum_right

    sum_left += a[idx]
  end

  return -1
end

def calc_sum(array)
  array.inject(&:+)
end

a = [-1, 3, -4, 5, 1, -6, 2, 1]

puts solution(a)
