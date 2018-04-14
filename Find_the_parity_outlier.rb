# You are given an array (which will have a length of at least 3, but could be very large) containing integers. The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. Write a method that takes the array as an argument and returns this "outlier" N.
#
# Examples
# [2, 4, 0, 100, 4, 11, 2602, 36]
# Should return: 11 (the only odd number)
#
# [160, 3, 1719, 19, 11, 13, -21]
# Should return: 160 (the only even number)

# My Answer:
def find_outlier(int)
  counter = 0
  3.times do |i|
    if int[i].odd?
      counter += 1
    end
  end
  if counter > 1
    int.each do |n|
      return n if n.even?
    end
  else
    int.each do |n|
      return n if n.odd?
    end
  end
end

puts find_outlier([1,1,1,1,1,2])
puts find_outlier([2,2,2,5])
puts find_outlier([1,3,5,7,8])


# Best Answer from CodeWars

# def find_outlier(integers)
#   integers.partition(&:odd?).find(&:one?).first
# end
