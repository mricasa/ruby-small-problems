class MyCar
attr_accessor :color, :model
attr_reader :year

	def initialize(y, c, m)
		@year = y 
		@color = c 
		@model = m 
		@speed = 0
	end

	def speed
		if @speed > 100
			puts "#{@speed}?! you are going too fucking fast"
		else puts "you are currently going #{@speed} mph"
		end
	end

	def speed_up
		puts "You slam the metal down hard. You have a need for speed"
		@speed += 20
	end

	def brake
		puts "oh shit step on the brakes!"
		@speed -= 10
	end

	def shut_off
		puts "ok let's park the car"
		@speed = 0
	end

	def spray_paint(c)
		puts "You lunatic. how could you?"
		self.color = c        # we will use the prepended self here because we have already have a setter method. 
	end


end

green_machine = MyCar.new(1999, 'green', 'civic')

puts green_machine.color
green_machine.color='white'
puts green_machine.color
# puts green_machine.year = 2009 # you can't magically change the year of of your car. also you used attr_reader and not attr_accessor for read
puts green_machine.year

green_machine.speed_up
green_machine.speed_up
green_machine.speed
green_machine.brake
green_machine.speed
green_machine.shut_off
green_machine.speed
green_machine.spray_paint('orange')
puts green_machine.color

6.times {|x| green_machine.speed_up}
green_machine.speed