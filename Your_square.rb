# Task
# Given an integral number, determine if it's a square number:
#
# In mathematics, a square number or perfect square is an integer that is the square of an integer; in other words, it is the product of some integer with itself.
#
# The tests will always use some integral number, so don't worry about that in dynamic typed languages.
#
# Examples
# is_square (-1) # => false
# is_square   3 # => false
# is_square   4 # => true
# is_square  25 # => true
# is_square  26 # => false

#My answer:
def is_square(x)
  return false if x < 0
  if Math.sqrt(x) % 1 == 0
    return true
  else
    return false
  end
end

puts is_square(-1)
puts is_square(1)
puts is_square(30)

#Best answer from Codewars:
# def is_square(x)
#   x < 0 ? false : Math.sqrt(x) % 1 == 0
# end
