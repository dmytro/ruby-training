# https://codility.com/demo/results/training8FSE9W-VQA/
#
# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(n)
  # write your code in Ruby 2.2
  max_gap, current_gap, one_detected = 0, 0, false

  bin = n.to_s(2).split("")

  bin.each do |elem|
    one_detected = true if elem == "1"
    if one_detected && elem == "0"
      current_gap += 1
    else
      current_gap = 0
    end
    max_gap = current_gap if current_gap > max_gap
  end

  return max_gap
end

# https://codility.com/demo/results/trainingBDY3EW-MTT/
# 100%

def solution(n)
  # write your code in Ruby 2.2
  max_gap, current_gap, one_detected = 0, 0, false

  bin = n.to_s(2).split("")

  bin.each do |elem|

    one_detected = true if elem == "1"
    max_gap = current_gap if (current_gap > max_gap && elem == "1")
    if one_detected && elem == "0"
      current_gap += 1
    else
      current_gap = 0
    end
  end

  return max_gap
end
