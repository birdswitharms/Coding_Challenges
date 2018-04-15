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

def is_square(x)
  return true if Math.sqrt(x) % 1 == 0
end

puts is_square(4)
