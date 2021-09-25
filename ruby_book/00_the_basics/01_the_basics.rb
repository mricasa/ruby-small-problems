#1. Add two strings together that, when concatenated, return your first and last name as your full name in one string.

"#{"Michael"} #{"Ricasa"}"

# 2. Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the: 1) thousands place 2) 
# hundreds place 3) tens place 4) ones place

thousands = 4243 / 1000
hundreds = 4243 % 1000 / 100 # ok so what this will do is return the remainder, which will always be to the hundreds if it's a remainder >= 100. 
# for remainders less than 100, dividing the value by 100 will still give you a 0, which is the place digit that fulfills this exercise
tens = 4243 % 100 / 10
ones = 4243 % 10 

# 3. Write a program that uses a hash to store a list of movie titles with the year they came out. Then use the puts command to make your program 
# print out the year of each movie to the screen. The output for your program should look something like this.

movies = {
	"matrix": 1999,
	"pokemon the movie 2000": 2000,
	"se7ven": 1997,
	"drive": 2010,
	"sin city": 2005,
	"the martian": 2014,
	"interstellar": 2012,
	"parasite": 2019

}

movies.each do |key, val| puts key end

# 4. Use the dates from the previous example and store them in an array. Then make your program output the same thing as exercise 3.
	
movie_array = Array.new
movie_array << movies.values
movie_array.each do |x| puts x end

# Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.
# went way overboard on this exercise lol. solution is simply writing out the expression
# def get_factorial(num) 
# 	array1 = (1..num).to_a
# 	array2 = array1.each { |x| num * x}
# 	array2
	
# 	# array1.each_index { |x| 
# 	# 	array1[x] * array1[x + 1] unless x > num
# 	# }
# end

# Write a program that calculates the squares of 3 float numbers of your choosing and outputs the result to the screen. note to self: keep it simple

puts 3.23**2
puts 3.53**2
puts 6.23**2

#What does the following error message tell you?
# SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
#   from /usr/local/rvm/rubies/ruby-2.5.3/bin/irb:16:in `<main>'
# Ans: It tells me that there is a problem with syntax. The compiler was expecting to see a close parentheses, but instead it saw a close curly bracket. ie
# there is an open parentheses somewhere without a friend


