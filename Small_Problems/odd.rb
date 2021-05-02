def odd?(num)
   num % 2 != 0
end

def odd_rem?(num)
  num.remainder(2) != 0
end

#test cases for the first method:

puts odd?(2)
puts odd?(3)
puts odd?(-3)
puts odd?(-2)
puts odd?(0)
puts ""
#test cases for the second method:
puts odd_rem?(2)
puts odd_rem?(3)
puts odd_rem?(-1)
puts odd_rem?(-4)
puts odd_rem?(0)
