# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes
# the sum of those multiples. For instance, if the supplied number is 20, the result should be  98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).
# You may assume that the number passed is an integer greater than 1.

# What happens if there are no multiples of 3 or 5?

# Data Structure:
# Input: Integer greater than 1
# Output: Integer

# Data Structure/ Algorithm:
# 1. Create an empty array "multiples"
# 2. Determine what the multiples of 3 and 5 for the given integer are, and push those to the multiples array
#     2.1 Create a loop to iterate over the factors of the integer
#     2.2. Find all the multiples of 3 or 5 in the integer
#      2.2.3.: Use modulo (?)
#     2.3. If multiples of 3 or 5 are found, push them to "multiples" array
# 3. Sum the elements of the multiple array and return its value.

def multisum(int)
  multiples = []
  loop do
    break if int.zero?
    if int % 3 == 0 || int % 5 == 0
      multiples << int
    end
    int -= 1
  end
multiples.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

# Recursive method: 

# def multisum_recursive(int)
#   return 0 if int.zero?
#   if int % 3 == 0 || int % 5 == 0
#     int + multisum_recursive(int -1)
#   else
#     multisum_recursive(int -1)
#   end
# end

# p multisum_recursive(3) == 3
# p multisum_recursive(5) == 8
# p multisum_recursive(10) == 33
# p multisum_recursive(1000) == 234168
  
def multisum_map(int)
  int.map do |n|
    (n % 3).zero? || (n % 5).zero? ? n + (n-1) : (n-1)
  end
end
p multisum_map(20)


