# Write a method that returns an Array that contains every other elemetn of an Array that is passed in as an argument.
# The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

# Data Structure:
# Input: Array
# Output: Array

# Algorithm:

# 1) Receive an Array as Input
# 2) Return Array consisting of odd.numbered index elements from input Array



# First solution:

def oddities(array)
  odd_list = []
  array.each_index do |index|
    if index.even?
      odd_list << array[index]
    end
  end
 odd_list
end


# Second solution:

def oddities2(array)
  array.select {|element| array.index(element).even?}
end
    

# Third solution:
def oddities3(array)
  array.delete_if {|element| array.index(element).odd?}
end




