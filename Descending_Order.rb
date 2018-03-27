# Your task is to make a function that can take any non-negative integer as a argument
# and return it with its digits in descending order.
# Essentially, rearrange the digits to create the highest possible number.
#
# Examples:
# Input: 21445 Output: 54421
#
# Input: 145263 Output: 654321
#
# Input: 1254859723 Output: 9875543221

# My answer:

def descending_order(n)
  result = []
  if n <= 0
    return 0
  end
  array = n.to_s.split("")
    array.length.times do |num|
      array.count("#{array.max}").times do
        result << array.max
      end
      array.delete(array.max)
    end
  p result.join.to_i
end

descending_order(1254859723) # 987553221

# Best answer from codewars:
# def descending_order(n)
#   n.to_s.chars.sort.reverse.join.to_i
# end
