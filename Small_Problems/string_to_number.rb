# Create a method that converts a string of numeric characters (including an optional plus or minus sign)
# to an Integer. Do not use any standard conversion methods available to Ruby. Your method should do this the old-fashioned
# way and calculate the result by analyzing the characters in the string.

# Data Structure:
# Input: String
# Output: Integer

# Algorithm:
# Create an array Numbers containing numbers
# Create a "conversor" variable that is equal to the index of the string
# Compare the input string to the array Number
# If Number.inlude? string character, then string character == "conversor" variable.

DIGITS = ("0".."9").zip(0..9).to_h

string = "-2653"

def string_to_int(string)
  digits =  string.chars.map {|char| DIGITS[char]}
  value = 0

  digits.each do |digit| value = 10 * value + digit 
  end
  value
end


def string_to_signed_integer(string)
  if string[0] == "-" 
    string.delete!(string[0])
    -string_to_int(string) 
  elsif string[0] == "+"
    string.delete!(string[0])
    string_to_int(string)
  else
    string_to_int(string)
  end
end

p string_to_signed_integer(string)
p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100