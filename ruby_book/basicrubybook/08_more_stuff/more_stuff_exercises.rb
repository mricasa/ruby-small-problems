# Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.

# words = [
# 	"laboratory",
# 	"experiment",
# 	"Pans Labyrithn",
# 	"elaborate",
# 	"polar bear"
# ]

# words.each do |word|
# 	if word =~ /lab/
# 		puts word

# 	end
# end 

# What will the following program print to the screen? What will it return?

# def execute(&block)
#   block
# end

# p execute { puts "Hello from inside the execute method!" }

# it doens't print anything to the string because the argument &block does not have the call method in the method definition of execute
# it returns a proc object. if you add the p method to the front of the method call, you'll see its object type Proc and memory address

# What is exception handling and what problem does it solve?

=begin
Exception handling is a technique that we can use to make our programs robust to interaction with the public or outside world as well as to any unexpected inputs passed into the program.

Exceptions may be thought of as errors. Errors will cause a program to terminate as soon as they are encountered. However, if we use exception handling with the rescue keyword, we can ask that a specific thing happens instead of simply flagging the error (such as printing a specific message) for some iteration that passes an invalid object. Then the program will continue to execute rather than being stopped in its tracks. 

begin
rescue
end


=end

# make the example from exercise 2 execute correctly

# def execute(&block)
#   block.call
# end

# execute { puts "Hello from inside the execute method!" }

# Why does the following code...

# def execute(block)
#   block.call
# end

# execute { puts "Hello from inside the execute method!" }

# give us this error when we run it?
# block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
# from test.rb:5:in `<main>'

# We get this error because we don't specify that the argument is a block in the method definition. We need to indicate that the passed argument would be a block with the & character. This would not be needed with procs. 