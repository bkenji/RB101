# Write a method that takes two strings as arguments, determines the longest of the two strings, 
# and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again.
# You may assume that the strings are of different lengths.


def short_long_short(str1, str2)
  if str1.size < str2.size
    str1 + str2 + str1
  else
    str2 + str1 + str2
  end
end

p short_long_short("he", "haha")
p short_long_short("ooola", "oa")

# ternary format:

def s_l_s_ternary(str1, str2)
  str1.size < str2.size ? (str1 + str2 + str1) : (str2 + str1 + str2)
end

p s_l_s_ternary("he", "haha")
p s_l_s_ternary("oola", "oa")