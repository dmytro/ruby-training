# O(n**3)
def solution(a)
  # write your code in Ruby 2.2
  arr = a.sort.uniq

  pref = []
  a.each_with_index do |elem,idx|

    pref = a[0..idx].sort.uniq

    return idx if pref == arr
  end
  return -1
end

# https://codility.com/demo/results/training4TGRZ4-R92/
# O(n**3)
def solution(a)
  # write your code in Ruby 2.2

  pref = []
  result = -1
  a.each_with_index do |elem,idx|

    if ! pref.include? elem
      result = idx
      pref << elem
    end

  end
  return result
end
