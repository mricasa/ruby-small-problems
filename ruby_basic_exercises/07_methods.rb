# Write a method named print_me that prints I'm printing within the method! when invoked as follows:

def print_me()
	"I'm printing within the method!"
end

# puts print_me

# Write two methods, one that returns the string "Hello" and one that returns the string "World". Then print both strings using #puts, combining them into one sentence.

def say_hi()
	"Hello"
end

def say_planet()
	"World"
end

# puts "#{say_hi} #{say_planet}"

#Write a method named greet that invokes the following methods:

def greet()
	"#{say_hi} #{say_planet}"
end

puts greet

# Using the following code, write a method called car that takes two arguments and prints a string containing the values of both arguments.

def car(make, model)
	puts make + ' ' + model
end

car('Honda', 'Civic')


# Give us your feedback
# Day or Night?
# The variable below will be randomly assigned as true or false. Write a method named time_of_day that, given a boolean as an argument, prints "It's daytime!" if the boolean is true and "It's nighttime!" if it's false. Pass daylight into the method as the argument to determine whether it's day or night.

daylight = [true, false].sample

def day_or_night(daylightdef)
	puts "this is a sanity check: " + daylightdef.to_s
	daylightdef ? puts("It's daytime!") : puts("It's nighttime")
			# you have to use parentheses here because of ambiguous arguments. If you don't use a parentheses in the first puts method, it doesn't recognize the : puts It's nighttime as a separate argument. Funny, because I thought that the : would be a special character that automatically delineates the end of the previous argument. #lmao I added this comment and it broke the method lol what. ughhh... oh. there was a space between the puts and its argument ()
end 

day_or_night(daylight)

# someone used a cool trick with calling an explicit return on two stacked conditionals, one for if day and one for if night. explcit return will exit the method call as soon as it registers the conditional



# Naming Animals
# Run the code as it is shown below, and take notice of any error messages.

# def dog
#   return name
# end

# def cat(name)
#   return name
# end

# puts "The dog's name is #{dog('Spot')}."
# puts "The cat's name is #{cat}."

# The error method is telling me that there was the wrong number of arguments. As written, dog accepts no arguments.

#Based on what the error messages are telling you, update the relevant method definitions and method invocations as necessary so that the names are printed as shown below.

def dog(name)
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat('Ginger')}."

# Name Not Found
# Write a method that accepts one argument, but doesn't require it. The parameter should default to the string "Bob" if no argument is given. The method's return value should be the value of the argument.



# The code should output true twice.

def assign_name(name = 'Bob')
	name
end

puts assign_name('Kevin') == 'Kevin'
puts assign_name == 'Bob'

# Multiply the Sum
# Write the following methods so that each output is true.



def add(a, b)
	a + b 
end

def multiply(a, b)
	a * b 
end

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36

# Random Sentence
# The variables below are both assigned to arrays. The first one, names, contains a list of names. The second one, activities, contains a list of activities. Write the methods name and activity so that they each take the appropriate array and return a random value from it. Then write the method sentence that combines both values into a sentence and returns it from the method.

def name(n)
	n.sample
end


def activity(a)
	a.sample
end

def sentence(a, b)
	puts a + ' is ' + b
end

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

puts sentence(name(names), activity(activities))
