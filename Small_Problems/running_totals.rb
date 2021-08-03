# Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element
# has the running total from the original Array.

# Problem:
#  Pattern 1 (integer-based): n, n + n2, n + n2 + n3 etc
#  Pattern 2 (index-based): [0], [0 + 1], [1 + 2], [2 + 3] etc

# Data Structure:
# Input: Array
# Output: Array

# Algorithm:
# 1. Iterate over input Array:
#  1.1 for the first element, add zero
#  1.2. for the second element, add first element
#  1.3. for the third element, add second element, etc.


def running_total(arr)
r_arr = []
counter = 0
  loop do
    break if counter == arr.size
    if counter > 0
      r_arr << (arr[counter] + r_arr[counter - 1])
      counter += 1
    else
      r_arr << arr[counter]
      counter += 1
    end
  end
r_arr
end

p running_total([2, 5, 13])
p running_total([14, 11, 7, 15, 20])
p running_total([3]) == [3]
p running_total([]) == []

# Further Exploration:


def running_total_2(array)
  rarr = []
  array.inject(0) do|sum, n| 
    rarr << (sum + n)
    sum + n
  end
  rarr
end

