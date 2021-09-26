#1  False, False, False, True, True
#2

def allcaps(stringin)
	if stringin.length > 10
		stringin.upcase
	else
		return
	end
end

#3

def numrange(x)
	if x >= 0 && x <= 50
		puts "It's between 0 and 50"
	elsif x >= 51 &&  x <= 100
		puts "It's between 51 and 100"
	elsif x > 100
		puts "It's above 100"
	else
		puts "This isn't a number i can work with"
	end
end


=begin
1. FALSE
2. did you get it right
3. Alright now!

=end

# y = 9
# x = 10
# if (x + 1) <= (y)
#   puts "Alright."
# elsif (x + 1) >= (y)
#   puts "Alright now!"
# elsif (y + 1) == x
#   puts "ALRIGHT NOW!"
# else
#   puts "Alrighty!"
# end

# 5. you can fix this by adding end to the end of the condiitonal
# branch on line 5 (droppping the existing end to 6), indenting to 
# bring into line with the if else statements

=begin
1. should have been error. cant compare string with numeric using > <
2. false
3. false
4. false
5. false
6. true
=end