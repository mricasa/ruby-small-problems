# # Start at 6:15 9/28/21 # resumed at 7 PM
# Repeat after me
# Write a program that asks the user to type something in, after which your program should simply display what was entered.

# Example:

# Copy Code
# puts "Type anything you want:"
# puts gets.chomp


# Your Age in Months
# Write a program that asks the user for their age in years, and then converts that age to months.

# puts "what's your age in years?"
# puts gets.chomp.to_i * 12

# Print Something (Part 1)
# Write a program that asks the user whether they want the program to print "something", then print it if the user enters y. Otherwise, print nothing.

# puts "Want me to print something?"
# puts "Something" if gets.chomp == 'y'

# Print Something (Part 2)
# In the previous exercise, you wrote a program that asks the user if they want the program to print "something". However, this program recognized any input as valid: if you answered anything but y, it treated it as an n response, and quit without printing anything.

# Modify your program so it prints an error message for any inputs that aren't y or n, and then asks you to try again. Keep asking for a response until you receive a valid y or n response. In addition, your program should allow both Y and N (uppercase) responses; case sensitive input is generally a poor user interface choice. Whenever possible, accept both uppercase and lowercase inputs.

# loop do puts "Want me to print something?"
# 	response = gets.chomp.downcase
# 	if response == 'y'  
# 		puts "Something"
# 		break
# 	elsif response == "n"
# 		break
# 	else
# 		puts "That's not correct"
# 	end
# end

#trying to replicate the LS solution from memory... eh couldnt do it. format is strange.


# *The solution to this exercise will become a familiar pattern early during your Launch School learning. We use a plain loop to solicit inputs until we have a valid input, then exit that loop.


# choice = nil
# loop do
# 	puts "do you want me to print something ? (y/n)"
# 	choice = gets.chomp.downcase
# 	break if %(y n).include?(choice)
# 	puts "invalid input, must be y or n"
# end
# puts 'something' if choice == 'y'

# Launch School Printer (Part 1)
# Write a program that prints 'Launch School is the best!' repeatedly until a certain number of lines have been printed. The program should obtain the number of lines from the user, and should insist that at least 3 lines are printed.

# For now, just use #to_i to convert the input value to an Integer, and check that result instead of trying to insist on a valid number; validation of numeric input is a topic with a fair number of edge conditions that are beyond the scope of this exercise.

# nancy = 0
# loop do 
# 	puts "How many output lines do you want?"
# 	nancy = gets.chomp.to_i
# 	break if nancy >= 3 
# 	puts "It needs to be >3"
# end 

# count = 0
# loop do
# 	break if count > nancy
# 	puts "Launch school is the best!"
# 	count += 1
# end


# LS method is able to use nancy in the while loop.. cute. we attempted a while loop but we went with I don't even remember, but we referenced count i think. I think it was while count < nancy, which didn't work for some odd reason. idk
# nancy = 0
# loop do 
# 	puts "How many output lines do you want?"
# 	nancy = gets.chomp.to_i
# 	break if nancy >= 3 
# 	puts "It needs to be >3"
# end 

# while nancy > 0 # so basically it says, you have nancy, and it's true that nancy is more than 0 once you enter this loop
# 	puts "Launch school is the best!"
# 	nancy -= 1 # decrement here for each iteration until nancy hits 0
# end

# Passwords
# Write a program that displays a welcome message, but only after the user enters the correct password, where the password is a string that is defined as a constant in your program. Keep asking for the password until the user enters the correct password.

# loop do 
# 	puts "Good evening. What's the password"
# 	break if gets.chomp == "batman"
# 	puts "that's not the password"
# end
# puts "Welcome back bruce"


# User Name and Password
# In the previous exercise, you wrote a program to solicit a password. In this exercise, you should modify the program so it also requires a user name. The program should solicit both the user name and the password, then validate both, and issue a generic error message if one or both are incorrect; the error message should not tell the user which item is incorrect.

# loop do
# 	puts "What's your user name?"
# 	usernm = gets.chomp
# 	puts "what's your password?"
# 	passwd = gets.chomp
# 	break if usernm == 'batman' && passwd == 'alfred'
# 	puts "Username/password is incorrect. Try again"
# end
# puts "nice"

# Dividing Numbers
# Write a program that asks the user to enter two integers, then prints the results of dividing the first by the second. The second number must not be 0. Since this is user input, there's a good chance that the user won't enter a valid integer. Therefore, you must validate the input to be sure it is an integer. You can use the following code to determine whether the input is an integer:

# Copy Code
# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string
# end
# It returns true if the input string can be converted to an integer and back to a string without loss of information, false otherwise. It's not a perfect solution in that some inputs that are otherwise valid (such as 003) will fail, but it is sufficient for this exercise.

# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string
# end

# numerator = nil
# denominator = nil

# loop do
# 	puts ">>> What's the numerator?"
# 	numerator = gets.chomp

# 	break if valid_number?(numerator)
# 	puts "that's not a number"
# end

# loop do
# 	puts ">>> What's the denominator?"
# 	denominator = gets.chomp

# 	if denominator == 0
# 		puts "that's not allowed. cant divide by 0"
# 	else
# 		break if valid_number?(denominator)
# 	end
# 	puts "that's not a number"
# end

# puts "#{numerator} divided by #{denominator} equals #{numerator.to_i / denominator.to_i}"

# Launch School Printer (Part 2)
# In an earlier exercise, you wrote a program that prints 'Launch School is the best!' repeatedly until a certain number of lines have been printed. Our solution looked like this:

# Modify this program so it repeats itself after each input/print iteration, asking for a new number each time through. The program should keep running until the user enters q or Q.



# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string
# end

# number_of_lines = nil
# state = nil
# while state != 'q'
# 	loop do
# 		puts ">> How many output lines do you want? Enter a number >= 3"
# 		response = gets.chomp
# 		if response == 'q'
# 			state = 'q'
# 			break
# 		elsif valid_number?(response)
# 			number_of_lines = response.to_i
# 			break if response.to_i >= 3
# 			puts "That's incorrect. Please make sure to enter a number >= 3"
# 		end	
# 	end

# 	while number_of_lines > 0
# 		puts "Launch School is the best!"
# 		number_of_lines -= 1
# 	end
# end

# the LS solution is, like yours, two nested loops within a higher-level loop that controls the repetition of the input output process. rather than embedding everything within a while loop, they just use two breaks for ='Q', one as a conditional break if in the first loop, and then a break if between the end of the first loop and start of the second.

# Opposites Attract
# Write a program that requests two integers from the user, adds them together, and then displays the result. Furthermore, insist that one of the integers be positive, and one negative; however, the order in which the two integers are entered does not matter.

# Do not check for the positive/negative requirement until both integers are entered, and start over if the requirement is not met.

# You may use the following method to validate input integers:

# Copy Code
def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

int_a = nil
int_b = nil

loop do
	puts ">>> enter integer 1"
	int_a = gets.chomp
	puts ">>> enter integer 2"
	int_b = gets.chomp
	if valid_number?(int_a) && valid_number?(int_b)
		break if int_a.to_i < 0 && int_b.to_i > 0
		break if int_a.to_i > 0 && int_b.to_i < 0
	end
	puts "those are not valid integers. They must be numbers, and 1 must be positive and the other negative."
end

puts int_a.to_i + int_b.to_i

# the cute LS trick here is that if you must have a negative number and positive number, the result of multiplying them will always be negative.
