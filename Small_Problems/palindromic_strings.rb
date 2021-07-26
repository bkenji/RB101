# Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. A palindrome
# reads the same forward and backward. For this exercise, case matters, as does punctuation and spaces.

# Examples:
# palindrome?('madam') == true
# palindrome?('Madam') == false          # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?('356653') == true

# Data Structure:
#   Input: String
#   Output: Boolean

# Algorithm:
#  1) Receive string as input 
#     a) gets.chomp (receive user input)

#  2) Decide whether string is a palindrome
#     a) user String#reverse
#  3) Returns true if string is a palindrome. False otherwise

def palindrome?(string_or_array)
  string_or_array == string_or_array.reverse
end

p palindrome?('madam')
p palindrome?('Madam')
p palindrome?("madam i'm adam")
p palindrome?('356653')


#  String#reverse works for either arrays or strings