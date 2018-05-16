# Your task is to make function, which returns the sum of a sequence of integers.
#
# The sequence is defined by 3 non-negative values: begin, end, step.
#
# If begin value is greater than the end, function should returns 0
#
# Examples
#
# sequenceSum(2,2,2) === 2
# sequenceSum(2,6,2) === 12 // 2 + 4 + 6
# sequenceSum(1,5,1) === 15 // 1 + 2 + 3 + 4 + 5
# sequenceSum(1,5,3) === 5 // 1 + 4

def sequence_sum(begin_number, end_number, step)
  result = 0
  return result if begin_number > end_number
  return end_number if begin_number == end_number
  steps_taken = (end_number / step.to_f).ceil
  steps_taken.times do |n|
    result += (begin_number)+(step*n)
  end
  if begin_number == 0
    result += end_number
  end  
  return result
end

puts sequence_sum(0,15,3) #expected 45
# 0 + 3 + 6 + 9 + 12 + 15
