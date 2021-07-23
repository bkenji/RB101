# Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers: 
# addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.

# What do do when faced with division by 0?

# Data Structure: 
# input: integer
# output: integer

# Algorithm:
# 1) Get input from user
# 2) Store input into a variable (array?)
# 3) Perform the requested operations on those two numbers
# Output the operations and their results.

# Code:
OPERATORS = %w(+ - * / % **)

def prompt(message)
  puts "==> #{message} "
end

prompt("Please enter the first number:")
n1 = gets.chomp
prompt("Please enter the second number:")
n2 = gets.chomp


OPERATORS.each do |op|
  prompt("#{n1} #{op} #{n2} = #{eval(n1 + op + n2)}")
rescue ZeroDivisionError
  prompt("Cannot divide by zero.")
rescue SyntaxError
  prompt("One of your inputs is not a number!")
rescue NameError
  prompt("One of your inputs is not a number!")
end


