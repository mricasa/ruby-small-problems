# These are the exercises from the exercises section of Introduction to Ruby 

# 1. Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

puts "Ex #1"
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each do |num|
	puts num.to_s
end

# Now, using the same array from #2, use the select method to extract all odd numbers into a new array.



puts "Ex #2"
my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
my_array.each do |num|
	if num > 5
		puts num
	end
end

puts "#3"
# Now, using the same array from #2, use the select method to extract all odd numbers into a new array.

new_array = my_array.select do |num|
	num % 2 != 0
end

puts new_array.to_s

puts "one line version"

new_array = my_array.select { |num| num % 2 != 0 } 
puts new_array.to_s

puts "#4"
#Append 11 to the end of the original array. Prepend 0 to the beginning.

my_array << 11
my_array.unshift(0)

puts my_array.to_s

puts "#5"

my_array.pop
my_array << 3

puts my_array.to_s

puts "#6"
my_array.uniq!
puts my_array.to_s

puts "#7"
puts "The major difference between an array and a hash is that a hash has values that are labeled with a key" 

puts "#8"
my_hash = {
	:crash => 10
}
puts my_hash.to_s

my_hash = {
	crash: 10
}
puts my_hash.to_s

puts "#9"
h = {a:1, b:2, c:3, d:4}

puts h[:b]

h[:e] = 5
puts h.to_s

h.each do |key, value|
	h.delete(key) if value < 3.5
end
puts h.to_s

# can also use delete_if. crazy

h.delete_if {|key, value| value > 3.5} 
puts h.to_s

puts "#10"

puts "Hash values can be arrays. We can have an array of hashes. Here are a couple exmaples"

my_hash = {
	cat: [1,2,3],
	dog: [3,4,2]
}

my_array = [
	{bob:34},
	{ted:30}
]

puts my_hash.to_s
puts my_array.to_s

puts "#11"
# Given the following data structures, write a program that copies the information from the array into the empty hash that applies to the correct person.

contact_data = [
	["joe@email.com", "123 Main st.", "555-123-4567"],
	["sally@email.com", "404 Not Found Dr.", "123-234-3454"]
]

contacts = {
	"Joe Smith" => {}, 
	"Sally Johnson" => {}
}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]

contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]


puts contacts.to_s

puts "#12"
# Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number.

puts "Joe's email is #{contacts["Joe Smith"][:email]}"
puts "Sally's phone number is #{contacts["Sally Johnson"][:phone]}"

puts "#13"
# Take the following array:
# and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split method.

a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

 # I seem to be biased toward multi-line iters so I'll try my best to use single-line where possible
a.map! { |phrase| phrase.split(' ') }
a.flatten!
p a # the difference with p from puts is that it also calls inspect

puts "#15"
# What will the following program output?

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

puts "It will put that the hashes are the same because hashes don't care about order. and the types and values check out"


puts "#16 Challenge"

# Challenge: In exercise 11, we manually set the contacts hash values one by one. Now, programmatically loop or iterate over the contacts hash from exercise 11, and populate the associated data from the contact_data array. Hint: you will probably need to iterate over ([:email, :address, :phone]), and some helpful methods might be the Array shift and first methods.

contact_data = [
	["joe@email.com", "123 Main st.", "555-123-4567"],
	["sally@email.com", "404 Not Found Dr.", "123-234-3454"],
	["mike@email.com", "444 This st.", "555-123-5233"]
]

contacts = {
	"Joe Smith" => {}, 
	"Sally Johnson" => {},
	"Mike Dude" => {}
}

# As a bonus, see if you can figure out how to make it work with multiple entries in the contacts hash.

contacts.each do |k,v|
	first_name = k.split(' ')[0].downcase
	matched_data = contact_data.select {|entry| entry[0].split("@")[0] == first_name} 

	matched_data.flatten.each do |info|
		if info =~ /@/
			contacts[k][:email] = info
		elsif info =~ /-/ # bc i don't know how to write a reg exp to match the phone # pattern lol
			contacts[k][:phone] = info
		else
			contacts[k][:address] = info
		end
	end
end

puts contacts.to_s

# BWAHAHAAHAHAHAHAHAHAHAHHAHAHA.
# I was able to do the challenge so I feel good about it. Let's check out their solution to see how they did it.

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift 
  end
end

p contact_data

# when they use shift, they delete from the array the first element of self and return it. So when we p contact_data, we get an empty array. Cray

# how would they do this with multiple keys for more individuals? Would they still need to match on the name? Or is there potential to use shift to handle multipe folks too? 