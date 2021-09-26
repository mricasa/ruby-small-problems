=begin
What does the each method in the following program return after it is finished executing?

x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

Each is an iteration method that allows ruby to iterate over a collection of elements. So here, it will move through each value in the array x and will run the code in the do/end block 5 times, once for each value-- returning that value + 1 for each iteration

however, what is ultimately returned is going to be the original array itself. See ruby documentation. (also note that there is no call mutation in the block)

=end


#2

# loop do 
# 	puts 'hi. if you want to stop type STOP'
# 	punch = gets.chomp
# 	if punch == 'STOP'
# 		break
# 	else 
# 		next
# 	end
# end

# going to try another version with while loop

# punch = ''
# while punch != 'STOP' do
# 	puts "you better type STOP to stop this"
# 	punch = gets.chomp
# 	puts "why you no type STOP"
# end

# 3

def to_zero(n)
	if n >= 0
		puts n
		to_zero(n-1)
	end
end

to_zero(20)