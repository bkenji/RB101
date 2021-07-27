# Write a method that takes a year as input and returns the century. The return value should be a string 
# that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.
# New centuries begin in years that end with 01. So, the years 1901-2000 comprise the 20th century.

# Data Structure:
# Input: Integer
# Output: String

# Algorithm:
#  1) Input / 100.0 (float, for accuracy) rounded up (Float#ceil) = century
#  3) Add appropriate endings to century (create "suffix" method)
#     3.1: account for 11, 12, 13
#     3.2: endings 1, 2, 3 + all other endings

def century(year)
  century = year / 100.0 
  suffix(century.ceil)
end

def suffix(century) 
  if ["11", "12", "13"].include?(century.to_s) then century.to_s + "th"
  else
    case century.to_s[-1]
    when "1" then century.to_s + "st"
    when "2" then century.to_s + "nd"
    when "3" then century.to_s + "rd"
    else century.to_s + "th"
    end
  end
end





p century(2000)
p century(2001)
p century(1965)
p century(256)
p century(5)
p century(10103)
p century(1052)
p century(1127)
p century(11201)
p century(1250)
