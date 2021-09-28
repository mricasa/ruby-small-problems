# The code below is an example of an infinite loop. The name describes exactly what it does: loop infinitely. This loop isn't useful in a real program, though. Modify the code so the loop stops after the first iteration.

loop do
  puts 'Just keep printing...'
	break
end

# Loopception
# The code below is an example of a nested loop. Both loops currently loop infinitely. Modify the code so each loop stops after the first iteration

loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
		break
  end
	break
end

puts 'This is outside all loops.'


# Control the Loop
# Modify the following loop so it iterates 5 times instead of just once.

# iterations = 5################your answer##########

# iterations.times do
#   puts "Number of iterations = #{iterations}"
  
# end####################
# 
# Let's try it with the loop outwardly scoping toward the top level iterations var and break it with a conditional

iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
	iterations += 1
  break if iterations > 5
end

# Loop on Command
# Modify the code below so the loop stops iterating when the user inputs 'yes'.

# loop do
#   puts 'Should I stop looping?'
#   answer = gets.chomp
# 	if answer == 'yes'
# 		break
# 	end
# end

# you could have also done a one liner for break like you did in the previous example hahah


# Say Hello
# Modify the code below so "Hello!" is printed 5 times.

say_hello = true

# while say_hello
#   5.times do puts 'Hello!' end
#   say_hello = false
# end

# trying again with conditional


# say_hello = true
# count = 0

# while say_hello
#   puts 'Hello!'
# 	count += 1
# 	if count > 5
# 		say_hello = false 
# 	end
# end

# trying with the var assignment with conditional in the code below. 
# remember that there's no need for end keywords in oneliners
# end is only for multi-line statements 


say_hello = true
count = 0
while say_hello
  puts 'Hello!'
	count += 1
	say_hello = false if count > 5 
	
end

# Print While
# Using a while loop, print 5 random numbers between 0 and 99. The code below shows an example of how to begin solving this exercise.

# numbers = []



# numbers = []
# count = 0

# while count < 5 
# 	puts rand(99)
# 	count += 1
# end


# here's a cute way they did the conditional with a measure of array size and pushing to the array

numbers = []
while numbers.size < 5
	numbers << rand(100) # rand argument max is exclusive
end
puts numbers

# Count Up
# The following code outputs a countdown from 10 to 1. Modify the code so that it counts from 1 to 10 instead.

count = 1

until count > 10
  puts count
  count += 1
end

# Print Until
# Given the array of several numbers below, use an until loop to print each number.

#your solution, destructive
# numbers = [7, 9, 13, 25, 18]

# until numbers.length == 0
# 	puts numbers.shift
# end

#LS solution
# uses upwardly incrementing count var that's also used for indexing the array

numbers = [7, 9, 13, 25, 18]
count = 0

until count == numbers.length
	puts numbers[count]
	count += 1
end

# That's Odd
# The code below shows an example of a for loop. Modify the code so that it only outputs i if i is an odd number.


# for i in 1..100
#   puts i if i % 2 != 0
# end

# LS solution simply needs to use odd? method

for i in 1..100
  puts i if i.odd?
end

# Greet Your Friends
# Your friends just showed up! Given the following array of names, use a for loop to greet each friend individually.

friends = ['Sarah', 'John', 'Hannah', 'Dave']

for friend in friends
	puts "Howdy there #{friend}" 
end