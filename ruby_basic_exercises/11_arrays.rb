# New Pet
# In the code below, an array containing different types of pets is assigned to pets.

# Copy Code
pets = ['cat', 'dog', 'fish', 'lizard']
# Select 'fish' from pets, assign the return value to a variable named my_pet, then print the value of my_pet.

my_pet = pets[2]
puts my_pet

# More Than One
# In the code below, an array containing different types of pets is assigned to pets.

# Copy Code
# Write some code that selects 'fish' and 'lizard' from the pets array - select the two items at the same time. Assign the return value to a variable named my_pets, then print the contents of my_pets as a single string, e.g.:

# Make sure you use my_pets to get the words "fish" and "lizard" in that message.

pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]

puts "My pets are named #{my_pets[0]} and #{my_pets[1]}"

# Free the Lizard
# In the code below, an array containing different types of pets is assigned to pets. Also, the return value of pets[2..3], which is ['fish', 'lizard'], is assigned to my_pets.

# Copy Code
pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
# Remove 'lizard' from my_pets then print the value of my_pets.

my_pets.pop
puts "I have a pet #{my_pets[0]}"


# One Isn't Enough
# Using the code below, select 'dog' from pets, add the return value to my_pets, then print the value of my_pets.

# Copy Code
pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
my_pets.pop

my_pets << pets[1]
puts "my pets are #{my_pets.to_s}"

# What Color Are You?
# In the code below, an array containing different types of colors is assigned to colors.

# Copy Code
colors = ['red', 'yellow', 'purple', 'green']
# Use Array#each to iterate over colors and print each element.

colors.each {|color| puts "I'm the color #{color}"}

# Doubled
# In the code below, an array containing the numbers 1 through 5 is assigned to numbers.

# Copy Code
numbers = [1, 2, 3, 4, 5]
# Use Array#map to iterate over numbers and return a new array with each number doubled. Assign the returned array to a variable named doubled_numbers and print its value using #p.

doubled_numbers = numbers.map {|number| number * 2}
p doubled_numbers 


# Divisible by Three
# In the code below, an array containing five numbers is assigned to numbers.

# Copy Code
numbers = [5, 9, 21, 26, 39]

#Use Array#select to iterate over numbers and return a new array that contains only numbers divisible by three. Assign the returned array to a variable named divisible_by_three and print its value using #p.

divisible_by_three = numbers.select{|number| number % 3 == 0} 
p divisible_by_three

# I like one liners yes i do. I'm going to do another with multi line just for practice

divisible_by_three = numbers.select do |number|
	number % 3 == 0
end
p divisible_by_three

# Favorite Number (Part 1)
# The following array contains three names and numbers. Group each name with the number following it by placing the pair in their own array. Then create a nested array containing all three groups. What does this look like? (You don't need to write any code here. Just alter the value shown so it meets the exercise requirements.)

# Copy Code
['Dave', 7, 'Miranda', 3, 'Jason', 11]
[['Dave', 7], ['Miranda', 3], ['Jason', 11]]

# Favorite Number (Part 2)
# In the code below, a nested array containing three groups of names and numbers is assigned to favorites.

# Copy Code
favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]

# Flatten and print this array. That is, the printed result should not have any subarrays, but should have all of the original strings and numbers from the original array:

favorites.flatten!
p favorites


# Are We The Same?
# In the code below, two arrays containing several numbers are assigned to two variables, array1 and array2.

# Copy Code
array1 = [1, 5, 9]
array2 = [1, 9, 5]
# Compare array1 and array2 and print true or false based on whether they match.

puts array1 == array2