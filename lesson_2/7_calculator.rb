# RB101 > Lesson 2 > 7. Calculator

# asks for two numbers
# asks for type of operation to perform: add, sub, mult, or div
# displays result

# After watching video, changed .to_i to .to_F to allow for float division:

puts "Please input first number:"           # asks for 1st number
num1 = Kernel.gets().chomp().to_f           # receives input 1
puts "Please input second number:"          # asks for 2nd number
num2 = Kernel.gets().chomp().to_f           # receives input 2
puts "Please choose operation to perform: add (+), subtract (-), multiply (*), or divide (/): "
operation = Kernel.gets().chomp()

case operation
when "add" , "addition" ,  "+" 
   Kernel.puts( "Your result is: #{num1 + num2}") 
when "multiply" , "multiplication" , "multi" , "*" 
   Kernel.puts("Your result is: #{num1 * num2}")
when "subtract" , "subtraction" ,"sub" , "-" 
   Kernel.puts("Your result is: #{num1 - num2}")
when "division" , "divide" , "div" , "/" 
  if num2 == 0 
    puts "Error: you cannot divide by zero"
  else
   Kernel.puts("Your result is: #{num1 / num2}")
  end
end


