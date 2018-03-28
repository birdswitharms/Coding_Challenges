# An isogram is a word that has no repeating letters, consecutive or non-consecutive. Implement a function that determines whether a string that contains only letters is an isogram. Assume the empty string is an isogram. Ignore letter case

# is_isogram("Dermatoglyphics" ) == true
# is_isogram("aba" ) == false
# is_isogram("moOse" ) == false # -- ignore letter case

# My answer:

def is_isogram(string)
  string.downcase.chars.uniq == string.downcase.chars
end


# Best answer from Codewars:
def is_isogram(string)
  string.downcase.chars.uniq == string.downcase.chars
end

# first time I've got it exactly the same!!
