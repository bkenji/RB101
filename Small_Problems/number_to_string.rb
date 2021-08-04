# Write a method that takes a positive integer or zero, and converts it to a string representation. 
# You may not use any of the standard conversion methods available in Ruby. Your method should do this
# the old-fashioned way and construct the string by anallyzing and manipulating the number.

# Using a hash:

STRING_DIGITS = (0..9).zip("0".."9").to_h

def integer_to_string(integer)
  string_digits = integer.digits.reverse.each {|n| STRING_DIGITS[n]}
  string_digits.join
end

# Shorter solution:

def integer_to_string_2(int)
  int.digits.join.reverse
end

def signed_integer_to_string(int)
  return "0" if  int == 0
  int < 0  ? "-" + int.abs.digits.join.reverse : "+" + int.abs.digits.join.reverse
end

p signed_integer_to_string(-32)
p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
  
