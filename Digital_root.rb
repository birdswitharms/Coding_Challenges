# In this kata, you must create a digital root function.
#
# A digital root is the recursive sum of all the digits in a number. Given n, take the sum of the digits of n. If that value has two digits, continue reducing in this way until a single-digit number is produced. This is only applicable to the natural numbers.
#
# Here's how it works (Ruby example given):

# digital_root(16)
# => 1 + 6
# => 7
#
# digital_root(942)
# => 9 + 4 + 2
# => 15 ...
# => 1 + 5
# => 6


# My answer using recursion:

def digital_root(num)
  if num < 10
    return num
  end
  recursion = num.to_s.split("").map { |n| n.to_i }.reduce(:+)
  digital_root(recursion)
end

p digital_root(5987158979)

# Best answer from codewars:

# def digital_root(n)
#   n < 10 ? n : digital_root(n / 10 + n % 10)
# end
