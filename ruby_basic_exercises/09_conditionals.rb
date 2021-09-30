# In the code below, sun is randomly assigned as 'visible' or 'hidden'.

# Copy Code
# sun = ['visible', 'hidden'].sample

# # Write an if statement that prints "The sun is so bright!" if sun equals 'visible'.

# puts sun
# puts "The sun is so bright" if sun == 'visible'


# Give us your feedback
# Unpredictable Weather (Part 2)
# In the code below, sun is randomly assigned as 'visible' or 'hidden'.

# Copy Code
# sun = ['visible', 'hidden'].sample

# # Write an unless statement that prints "The clouds are blocking the sun!" unless sun equals 'visible'.
# puts sun
# puts "The clouds are blocking the sun!" unless sun == 'visible'


# Unpredictable Weather (Part 3)
# In the code below, sun is randomly assigned as 'visible' or 'hidden'.

# Copy Code


# Write an if statement that prints "The sun is so bright!" if sun equals visible. Also, write an unless statement that prints "The clouds are blocking the sun!" unless sun equals visible.

# When writing these statements, take advantage of Ruby's expressiveness and use statement modifiers instead of an if...end statement to print results only when some condition is met or not met.

sun = ['visible', 'hidden'].sample
puts "The sun is so bright" if sun == 'visible'
puts "The clouds are blocking the sun!" unless sun == 'visible'


# True or False
# In the code below, boolean is randomly assigned as true or false.

# Copy Code
boolean = [true, false].sample
# Write a ternary operator that prints "I'm true!" if boolean equals true and prints "I'm false!" if boolean equals false.

boolean ? puts("I'm true!") : puts("I'm false!")

# Stoplight (Part 1)
# In the code below, stoplight is randomly assigned as 'green', 'yellow', or 'red'.

# Copy Code
stoplight = ['green', 'yellow', 'red'].sample
# Write a case statement that prints "Go!" if stoplight equals 'green', "Slow down!" if stoplight equals 'yellow', and "Stop!" if stoplight equals 'red'.

case stoplight
when 'green' then puts 'GO'
when 'yellow' then puts 'slow down'
when 'red' then puts 'stop!'
end

# Stoplight (Part 2)
# Convert the following case statement to an if statement.

# Copy Code
stoplight = ['green', 'yellow', 'red'].sample

if stoplight == 'green'
  puts 'Go!'
elsif stoplight == 'yellow'
  puts 'Slow down!'
else
  puts 'Stop!'
end


# Sleep Alert
# In the code below, status is randomly assigned as 'awake' or 'tired'.

# Copy Code
status = ['awake', 'tired'].sample

# Write an if statement that returns "Be productive!" if status equals 'awake' and returns "Go to sleep!" otherwise. Then, assign the return value of the if statement to a variable and print that variable.

action = nil 

if 'awake'
	'Be productive'
	action = 'be productive'
else
	'Go to sleep!'
	action = 'Go to sleep!'
end

puts action

# wtfffffffff WOW 
# LS calls the assignment in the if operator whatt.... whatttt ... .  whatttt

action = if status == 'awake'
		'Be productive'   # conditional assingment with return 
	else
		'Go to sleep'     # conditional assignment with return
	end
puts action


# Cool Numbers
# In the code below, number is randomly assigned a number between 0 and 9. Then, an if statement is used to print "5 is a cool number!" or "Other numbers are cool too!" based on the value of number.

# Copy Code
number = rand(10)

if number == 5
  puts '5 is a cool number!'
else
  puts 'Other numbers are cool too!'
end



# Currently, "5 is a cool number!" is being printed every time the program is run. Fix the code so that "Other numbers are cool too!" gets a chance to be executed.

# Stoplight (Part 3)
# Reformat the following case statement so that it only takes up 5 lines.

# Copy Code
stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'  then  puts 'Go!'
when 'yellow' then  puts 'Slow down!'
else 							  puts 'Stop!'
end
# formatting is recommended this way for making it easier for other readers and also yourself