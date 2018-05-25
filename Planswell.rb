# Input: String
# Output: true/false
# deaed length =5 -1 /2

def palendrom(str)
  newstr = str.split("")
  enum = (newstr.length-1)/2
  i = 1
  newstr.each do |char|
    if char != newstr[enum-i]
      i += 1
      return false
    end
  end
  return true
end

p palendrom("racecar")
