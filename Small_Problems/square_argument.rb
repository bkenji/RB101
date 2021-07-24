# Using the multiply method, write a method that computes the square of its argument (the square is the result of multiplying a number by itself)

def multiply(n1, n2)
  n1 * n2
end

def square(n)
 multiply(n * n)
end


def power(n, base)
  multiply(1,(n ** base))
end

p power(2, 0) # => 1
p power(2, 1) # => 2
p power(2, 3) # => 8
p power(2, 4) # => 16
p power(4, 4) # => 256



