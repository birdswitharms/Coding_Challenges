# Self test
# Input the number of fibonacci steps you wish to take
# Output the correct fibonacci number on that last step
# Example: fib(10)
# 0 1 1 2 3 5 8 13 21 34 < 10th step
# output: 55

def fib(num)
  fib_array = [0,1]
  while fib_array.size != num
    fib_array << (fib_array[-1]+fib_array[-2])
  end
  return fib_array[-1]
end
