# a = 7

# def my_value(b)
#   a = b
# end

# my_value(a + 5)

# puts a

a = 7

# def my_value(b)
#   b = a + a
# end

# my_value(a)
# puts a

# array = [1, 2, 3]

# array.each do |a|
#   a += 1
# end

# puts array


a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a