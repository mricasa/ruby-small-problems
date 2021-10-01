# my_proc = Proc.new do |num|
# 	puts num + 2
# end

# def takes_proc(num, proc)
# 	proc.call num
# end

# takes_proc(8, my_proc)

names = ['bob', 'joe', 'steve', nil, 'frank']

names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters in it."
  rescue
    puts "Something went wrong!"
  end
end