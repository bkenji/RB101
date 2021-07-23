# Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as characters.

# Data Structure: 
#    Input: String
#    Output: Integer (enveloped in a string)

# Algorithm:

# Get user input (String)
# Count the characters of user input minus spaces
#   a) find method? (split?)
#   b) count characters (.size) and subtract number of words minus 1. (problem: what if double spacing etc)
# Produce Answer

print "Please write a word or multiple words: "
string = gets.chomp
puts "There are #{string.split.join.length} characters in \"#{string}\""



