# 9/25/21 Hashes

# Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in select method to gather only immediate family members' names into a new array.

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immediate_only = family.select {|k, v| k == :sisters || k== :brothers}

puts immediate_only.values.flatten.to_s

# Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.

# merge returns a new hash that combines ontents from other_hash and the contents of hsh (the instance of hash that this method is called on).If no block specified, the value or entries with duplicate keys will be that of other_hash). You can specify in the block 3 named variables, key, oldval [hsh], newval [newhash] and specify a specific operation that should be carried out for figuring out the value for the duplicated keys (such as summing the numbers, or subtracting them, or averaging, etc)

# merge! adds the contents of other_hash (arg) to hsh. If no block specified, entries with duplicate keys are overwritten from other_hash, otherwise, the value of each duplicate key is determined by calling the block with the key, its value in hsh and its value in other_hash.

# SOoooooo a simple difference that follows the pattern of many splat methods, the merge method returns a new hash, whereas the merge! method changes the hash.

# here are some examples I'll make on my own

old_hash = {
	marbles: 6,
	tacks: 4,
	jacks: 7,
	steve: 20
}

new_hash = {
	rubber_ball: 3,
	tacks: 9000
}

merged_hash = old_hash.merge(new_hash) 

puts "here's the new hash with the overwritten duplicate tacks key " + merged_hash.to_s
puts "old hash is still the same " + old_hash.to_s
puts "now we'll try with merge! using the same hashes. Here I'll also pass a block that asks the method to keep the value of tacks from old_hash rather than changing it to the 9000 value in new_hash"

old_hash.merge(new_hash) {|key, oldval, newval| oldval } # do you think this is a built-in method that has a yield signal in it so that it leaves the method so we can apply logic in the branch?

puts "the old hash should now be different. it will have a new key called rubber ball, and tacks will still be 4"
puts old_hash.to_s

# hmm.... we didn't get the rubber ball for some reason... I could have sworn that the block should only affect the case of duplicate keys. the new key of rubber ball should still have been added but oh well.

# Given the following expression, how would you access the name of the person?

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
puts person.fetch(:name)
puts person[:name] #would also work?

# What method could you use to find out if a Hash contains a specific value in it? Write a program that verifies that the value is within the hash.

# value? swag

puts old_hash.value?(20)

# Given the following code... What's the difference between the two hashes that were created?

x = "hi there"
my_hash = {x: "some value"}  # this is going to use a symbol as a key
my_hash2 = {x => "some value"} # this is going to use a string as the key

# If you see this error, what do you suspect is the most likely problem?
# NoMethodError: undefined method `keys' for Array

# A. We're missing keys in an array variable. (no)

# B. There is no method called keys for Array objects.  (I mean it think i'd go with this one)

# C. keys is an Array object, but it hasn't been defined yet. (no)

# D. There's an array of strings, and we're trying to get the string keys out of the array, but it doesn't exist. (no)


