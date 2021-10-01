# class GoodDog
# 	def initialize(name)
# 		puts "This object was initialized!"
# 		@name = name
# 	end

# 	def name
# 		@name
# 	end

# 	def name=(name)
# 		@name = name
# 	end

# 	def speak
# 		"#{@name} says 'Arf!'"
# 	end


# end

# sparky = GoodDog.new('Sparky')

# puts sparky.speak
# puts sparky.name
# sparky.name = 'Kylo Ren'
# puts sparky.speak


# using attr_accessor [attribute accessor?] to automaticallygive us some setter and getter methods oo

class GoodDog
	attr_accessor :name, :height, :weight

	def initialize(n, h, w) 
		@name = n
		@height = h
		@weight = w
	end

	def speak
		"#{name} says 'arf!'" 
	end

	def change_info(n, h, w)
		self.name = n 
		self.height = h
		self.weight = w
	
	end

	def info
		"#{name} weighs #{weight} pounds and is #{height} inches tall"
	end

end

sparky = GoodDog.new('Sparky', 10, 5)
puts sparky.speak

sparky.name = 'Jason!'

puts sparky.speak


sparky.change_info('Barnaby', 36, 70)

puts sparky.info
puts.sparky.weight
