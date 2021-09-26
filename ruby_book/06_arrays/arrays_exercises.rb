

#1
# arr = [1, 3, 5, 7, 9, 11]
# number = 3

# puts arr.include?(number)

=begin
#2
# 1 line two is a product method, so it will combine into the 6 different combinations. 
# then at line 3, arr.first.last resolves to the integer 1. then passes that integer as the argument of delete method called on the first nested array [b, 1]. it permanently deletes 1, resulting in a nested array of [b] and returns 1, the delted value

# 2 is simpler because [Array(1..3)] results in an array with nested 1 element (being an array), rather than the array in #1 which had 3 elements, which resulted in a longer number of combinations in the product. 

So what we have instead will be two nested array elemnts in the resulting product vs the 6 in the first example

[[b, [1,2,3]], [a, [1,2,3]]

this will return a value of [1,2,3] when we delete


=end

# 3

# arr = [["test", "hello", "world"],["example", "mem"]]

# puts arr.flatten.select {|x| x == "example"}

# lol or just

# puts arr.last.first


=begin
1. 3 
2. an error i reckon since it's using [] notation instead of paren to pass the argument
3. 8


5. a= e, b = A c = nil


6. Ruby is trying to implicitly convert the string you passed as an integer so it can use it as an index. But there's no way to convert this particular string (margaret) into an index 

To fix this, what you could do is try
names[names.index('margaret')] = 'jody'
to get the index of margaret (3) and pass that into the index specifier to change the value margaret to jody

=end


# this_arr = ['cat', 'dog', 'snake', 'rabbit', 'budozer']

# this_arr.each_with_index { |val, i| puts "#{val} can be seen at index #{i}" } 


arr = [1, 2, 3, 4, 5, 6, 7]

arr2 = arr.map { |num| num + 2 } 

p arr
p arr2