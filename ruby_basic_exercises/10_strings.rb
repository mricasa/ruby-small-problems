srtung = String.new

# Modify the following code so that double-quotes are used instead of single-quotes.

# Copy Code
puts "It's now 12 o'clock."

# Ignoring Case
# Using the following code, compare the value of name with the string 'RoGeR' while ignoring the case of both strings. Print true if the values are the same; print false if they aren't. Then, perform the same case-insensitive comparison, except compare the value of name with the string 'DAVE' instead of 'RoGeR'.

# Copy Code
name = 'Roger'
if name.casecmp?('dAVE')
	puts 'true'
else 
	puts 'false'
end

# Dynamic String
# Modify the following code so that the value of name is printed within "Hello, !".

# Copy Code
name = 'Elizabeth'

puts "Hello, #{name}!"

# Combining Names
# Using the following code, combine the two names together to form a full name and assign that value to a variable named full_name. Then, print the value of full_name.

# Copy Code
first_name = 'John'
last_name = 'Doe'

full_name = first_name + ' ' + last_name
puts full_name

# Tricky Formatting
# Using the following code, capitalize the value of state then print the modified value. Note that state should have the modified value both before and after you print it.

# Copy Code
state = 'tExAs'
state.capitalize! # destructive version of captialize. Mutates the caller.
puts state

# Goodbye, not Hello
# Given the following code, invoke a destructive method on greeting so that Goodbye! is printed instead of Hello!.

# Copy Code
greeting = 'Hello!'
puts greeting
greeting.gsub!('Hello!','Goodbye!')
puts greeting

# Using the following code, split the value of alphabet by individual characters and print each character.

# Copy Code
alphabet = 'abcdefghijklmnopqrstuvwxyz'
puts alphabet.split('') # if you pass an empty string as the argument, it'll dice up the characters

# Pluralize
# Given the following code, use Array#each to print the plural of each word in words.

# Copy Code
words = 'car human elephant airplane'
words.split(' ').each {|word| puts word + 's'}

# Are You There?
# Using the following code, print true if colors includes the color 'yellow' and print false if it doesn't. Then, print true if colors includes the color 'purple' and print false if it doesn't.

# Copy Code
colors = 'blue pink yellow orange'
puts true if colors.include?('yellow')
colors.include?('purple') ? puts(true) : puts(false)
# your answer was redundant. notice that your puts values are booleans, and the include method also resolves to a boolean lol
# here:

colors = 'blue pink yellow orange'
puts colors.include?('yellow')
puts colors.include?('purple')