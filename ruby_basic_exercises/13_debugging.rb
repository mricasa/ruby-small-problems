# Reading Error Messages
# You come across the following code. What errors does it raise for the given examples and what exactly do the error messages mean?

# def find_first_nonzero_among(numbers)
#   numbers.each do |n|
#     return n if n.nonzero?
#   end
# end

# # Examples

# find_first_nonzero_among([0, 0, 1, 0, 2, 0])
# find_first_nonzero_among(1)

# the method definition of find_first_nonzero_among only accepts 1 argument. You can fix this by changing line 12 to pass an array of numbers. line 13 will also fail because you will not be able to iterate an integer

# Weather Forecast
# Our predict_weather method should output a message indicating whether a sunny or cloudy day lies ahead. However, the output is the same every time the method is invoked. Why? Fix the code so that it behaves as expected.

# Copy Code
# def predict_weather
#   sunshine = [true, false].sample

#   if sunshine
#     puts "Today's weather will be sunny!"
#   else
#     puts "Today's weather will be cloudy!"
#   end
# end

# predict_weather

# to fix the one above, i needed to change the true and false from strings to booleans

# Multiply By Five
# When the user inputs 10, we expect the program to print The result is 50!, but that's not the output we see. Why not?

# Copy Code

# def multiply_by_five(n)
#   n.to_i * 5
# end

# puts "Hello! Which number would you like to multiply by 5?"
# number = gets.chomp

# # puts "The result is #{multiply_by_five(number).to_s}!"

# # # So the result from gets is always a string. the string of "5" * 5 results in 1010101010

# # Pets
# # Magdalena has just adopted a new pet! She wants to add her new dog, Bowser, to the pets hash. After doing so, she realizes that her dogs Sparky and Fido have been mistakenly removed. Help Magdalena fix her code so that all three of her dogs' names will be associated with the key :dog in the pets hash.

# pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

# pets[:dog] << 'bowser' # can also use the push of course.
# # remember that calling pets[:dog] returns the array, so you can use arry methods to append. good job

# p pets 

# # Even Numbers
# # We want to iterate through the numbers array and return a new array containing only the even numbers. However, our code isn't producing the expected output. Why not? How can we change it to produce the expected result?

# # Copy Code
# numbers = [5, 2, 9, 6, 3, 1, 8]

# even_numbers = numbers.select do |n|
#    n.even?
# end

# p even_numbers # expected output: [2, 6, 8]

# # Confucius Says
# # You want to have a small script delivering motivational quotes, but with the following code you run into a very common error message: no implicit conversion of nil into String (TypeError). What is the problem and how can you fix it?

# # Copy Code
# def get_quote(person)
#   if person == 'Yoda'
#     'Do. Or do not. There is no try.'

# 	elsif person == 'Confucius'
#     'I hear and I forget. I see and I remember. I do and I understand.'

# 	elsif person == 'Einstein'
#     'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
#   end
# end

# puts 'Confucius says:'
# puts '"' + get_quote('Confucius') + '"'

# interestingly, in one of the LS examples, you can add an explicit return to each block to fix.. and evidently adding an explict return in the ifs require an end keyword. who knows why? i don't

# def get_quote(person)
#   if person == 'Yoda'
#     return 'Do. Or do not. There is no try.'
#   end

#   if person == 'Confucius'
#     return 'I hear and I forget. I see and I remember. I do and I understand.'
#   end

#   if person == 'Einstein'
#     return 'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
#   end
# end


# Account Balance
# Time for a check of your financial situation.

# The output of the code below tells you that you have around $70. However, you expected your bank account to have about $238. What did we do wrong?

# Copy Code
# Financially, you started the year with a clean slate.

# balance = 0

# # Here's what you earned and spent during the first three months.

# january = {
#   income: [ 1200, 75 ],
#   expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
# }

# february = {
#   income: [ 1200 ],
#   expenses: [ 650, 140, 320, 46.7, 122.5 ]
# }

# march = {
#   income: [ 1200, 10, 75 ],
#   expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
# }

# # Let's see how much you've got now...

# def calculate_balance(month)
#   plus  = month[:income].sum
#   minus = month[:expenses].sum

#   plus - minus
# end

# [january, february, march].each do |month|
#   balance += calculate_balance(month) # it's here. we're re-assigning balance for each iteration. let's make it +=
# end

# puts balance


# Colorful Things
# The following code throws an error. Find out what is wrong and think about how you would fix it.

# # Copy Code
# colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
# things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

# colors.shuffle!
# things.shuffle!

# i = 0
# loop do
#   break if i > colors.length - 1 || i > things.length - 1  # the loop starts iterating from 0. so we need to set this to equals length, which is 7. I orginally used the >= operator,  but i think the standard is to go with length -1

# 	# also added an OR operator so that it flexibly checks for which of the two is shorter

#   if i == 0
#     puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
#   else
#     puts 'And a ' + colors[i] + ' ' + things[i] + '.'
#   end

#   i += 1
# end

# Digit Product
# Given a String of digits, our digit_product method should return the product of all digits in the String argument. You've been asked to implement this method without using reduce or inject.

# When testing the method, you are surprised by a return value of 0. What's wrong with this code and how can you fix it?

# # Copy Code
# def digit_product(str_num) # I think we'll have to split the string first into an array that we can iterate on... actually that's wrong. Because the chars method will automatically split a string into letters, in this case, an array of single digit number strings.
#   digits = str_num.chars.map { |n| n.to_i }
#   product = 1 # they're multiplying by 0 in the first iter, which will result in 0 every time lol. let's have this start at 1 instead :)

#   digits.each do |digit|   #
#     product *= digit  # incrementing multiplication 
#   end

#   product # implicit return of product it seems. 
# end


# p digit_product('12345')
# # expected return value: 120
# # actual return value: 0

# Warriors and Wizards
# We started writing an RPG game, but we already run into an error message. Find the problem and fix it.

# Copy Code
# Each player starts with the same basic stats.

player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then the player picks a character class and gets an upgrade accordingly.

character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase

player.merge!(character_classes[input.to_sym]) # error is flagged here. I think we'll have to pass it as a symbol. stellar
# oh... we need to mutate the caller
# so now what we have is, a [] method passed on character_classes using method :thief, returning the value, which is a has { dexterity: 20}
# merging our base stats { }, it also has the shared key :dexterity, and with merge it takes on the value of the argument hash
# I think there are parameters for merge that can change the way this behaves. I think you could even use blocks to inform a transformation between the two hashes, such as summing the two keys etc.


puts 'Your character stats:'
puts player