# Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number
# appears amongst the first 5 numbers.

# Problem (P):
# Should the 6 numbers be arranged as independent integers, or should they be structured as an array? A: array

# Data Structure:
# input: Integer (user input)
# output: String

# Algorithm:
# 1) Create empty array
# 2) Get user input (6 numbers)
#    - convert to integer or leave as string?
# 3) Add first 5 numbers to empty array
# 4) Verify whether the 6th number appears amongst the first 5.
#    - use include? method to compare 6th number to array

# =========

require 'yaml'
MSG = YAML.load_file("searching_101.yml")

def prompt(message)
  puts "=> #{message}"
end

user_input = []
counter = 1

loop do
  prompt(MSG["input_#{counter}"])
  user_input << gets.chomp.to_i
  counter += 1
  break if counter == 6
end

prompt(MSG["input_6"])
check = gets.chomp.to_i
if user_input.include?(check) 
  prompt("The number #{check} appears in #{user_input}")
else
  prompt("The number #{check} doesn't appear in #{user_input}")
end
