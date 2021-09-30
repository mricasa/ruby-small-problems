# hashes are my favorite. It's 8:25 let's keep this rolling.

car = {
	type: 'sedan',
	color: 'blue',
	mileage: '80_000'
}

# Using the code below, add the key :year and the value 2003 to car.

# Copy Code
car = {
  type:    'sedan',
  color:   'blue',
  mileage: 80_000
}

car[:year] = 2003


# Broken Odometer
# Using the following code, delete the key :mileage and its associated value from car.

# Copy Code
car = {
  type:    'sedan',
  color:   'blue',
  mileage: 80_000,
  year:    2003
}
car.delete(:mileage)

puts car.to_s

# What Color?
# Using the following code, select the value 'blue' from car and print it with #puts.

# Copy Code
car = {
  type:    'sedan',
  color:   'blue',
  year:    2003
}

puts car[:color]

# Labeled Numbers
# Use Hash#each to iterate over numbers and print each element's key/value pair.

# Copy Code
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.each do |k, v|
	puts k.to_s + ' ' + v.to_s
end


# Divided by Two
# Use Enumerable#map to iterate over numbers and return an array containing each number divided by 2. Assign the returned array to a variable named half_numbers and print its value using #p.

# Copy Code
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

half_numbers = numbers.map do |k ,v|
	v / 2
end

p half_numbers


# Low, Medium, or High?
# Use Hash#select to iterate over numbers and return a hash containing only key-value pairs where the value is less than 25. Assign the returned hash to a variable named low_numbers and print its value using #p.

# Copy Code
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select {|k,v| v < 25}
p low_numbers 

# Low or Nothing
# In the following code, numbers isn't mutated because #select isn't a destructive method. However, there is a destructive version of #select named #select!. Modify the code to use #select! instead of #select.

#Copy Code
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select! do |key, value|
                 value < 25
               end

p low_numbers
p numbers

# Multiple Cars
# Create a nested hash using the following data.

vehicle = {
	car: {type: 'sedan',
	color: 'blue',
	year: 2003
	},
	truck: {type: 'pickup',
	color: 'red',
	year: '1998'
	}
}

puts vehicle[:car][:color]

# Which Collection?
# Rewrite car as a nested array containing the same key-value pairs.

# Copy Code
car = {
  type:  'sedan',
  color: 'blue',
  year:  2003
}

car = [[:type, 'sedan'], [:color, 'blue'], [:year, 2003]]