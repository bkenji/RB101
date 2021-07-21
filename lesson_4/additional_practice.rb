
# PRACTICE PROBLEM 1

#Turn the array into a hash where the names are the keys and the values are the positions in the array.

# input: array
# output: hash

# example: hash = {"Fred" => 0, "Barney" => 1, "Wilma" => 2, "Betty" => 3, "Pebbles" => 4, "BamBam" => 5}

# Use the to_h method


# flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# flintstones_hash = flintstones.to_h { |key| [key, flintstones.index(key)]}
# puts flintstones_hash



# PRACTICE PROBLEM 2

# Add up all of the ages from the Munster family hash:

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# all_ages = ages.values.sum
# puts all_ages


# PRACTICE PROBLEM 3
# remove people with age 100 and greater

# ages_younger_than_100 = []

# ages.each do |person, age|
#   if age > 100
#     ages.delete(person)
#   end
# end
# puts ages

# PRACTICE PROBLEM 4
# pick out the minimum age from our current Munster family hash


# - abridged PEDAC -
#input: hash
#output: integer
#algorithm: 
#   1) if minimum_age is zero,  current_age = to minimum_age'
#   2) if current_age < minimum_age, replace minimum_age with current_age.


# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237}

# minimum_age = 0
# counter = 0
# keys = ages.keys



# loop do
#   break if counter == ages.size
#   current_key = keys[counter]
#   current_age = ages[current_key]
#    if minimum_age.zero?
#     minimum_age = current_age
#    else
#     if current_age < minimum_age
#       minimum_age = current_age
#     end
#    end 
#   counter += 1
#   end
#  puts minimum_age

# PRACTICE PROBLEM 5

# In the array below, find the index of the first name that starts with "Be":

# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# puts flintstones.index {|name| name[0,2] == "Be"}

#PRACTICE PROBLEM 6
# #Amend the array so that the names are all shortened to just the first three characters:

# CODE:
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# flintstones.map! do |name|
#   name[0, 3]
# end
# puts flintstones

#PRACTICE PROBLEM 7
# Create a hash that expresses the frequency with which each letter occurs in this string:

# input: String
# output: hash
# case-sensitive? (yes)
# examples: { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

# algorithm:
# 1) create an array "characters" with each unique character
# 2) compare the array "characters" with string, and check the frequency of each character
# 3) produce frequency_hash from above comparison, in which each unique character is a key, and the frequency is the respective value

# CODE: 
# statement = "The Flintstones Rock"
# frequency_hash = {}

# letters = ('A'.. 'Z').to_a + ('a'.. 'z').to_a 
# letters.each do |l|
#   letter_frequency = statement.scan(l).count
#   frequency_hash[l] = letter_frequency if letter_frequency > 0
# end
# # loop do
# #   break if count == statement.size
# #   character_frequency = statement.scan(characters[count]).count
# #   frequency_hash[characters[count]] = character_frequency if character_frequency > 0
# #   count += 1
# # end
#  puts frequency_hash

 # Practice Problem 9
 # Write your own version of the rails titleize implementation.
 # Creates a string that has the first letter of each word capitalized as in a title.

 #input: String
 #output: String

 #algorithm:
 # split String into an Array of words
 # capitalize each word of the Array
 # convert array back into String

# CODE: 
#  string = "the flintstones rock"

#  def titleize (string)
#   words = string.split
#   title = words.map {|word| word.capitalize}.join(" ")
#  end

#  p titleize(string)

 # Practice Problem 10

 # Modify the hash such that each member of the Munster family has an additional "age_group" key that has one of three values describing 
 # the age group the family member is in (kid, adult, or senior). Your solution should produce the hash below
 # Note: a kid is in the age range 0-17, an adult is in the range 18-64, and a senior is aged 65+.


 munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, details|
  case details["age"]
  when (0..17)
    details["age_group"] = "kid"
  when (18..64)
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end
p munsters





