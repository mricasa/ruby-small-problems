puts "type in your first name"
firstname = gets.chomp
puts "what's your last name?"
lastname = gets.chomp

puts "why, hello there #{firstname} #{lastname}"
puts 10.times { puts firstname }