# * Array: An ordered, integer-indexed collection of objects. 

# Like an expandable file folder. 
# Put objects into "pockets".
# Pockets can be empty. 
# Unlimited number of pockets. 
# Index starts at 0. 

empty_array = []
my_array = ['a', 'b', 'c', 100] # 0, 1, 2, 3

my_array[1]
# 'b'

my_array[4]
# nil

# assigning a value
my_array[4] = 200
my_array[4] = nil # empty 

# ? difference between .size and .length
# no big difference when performed on arrays or strings. But length cannot be used on integers and size seems to return the number of bits(?) of the integer

# * exclamation point at the end of the method - powerful version of the method, which makes a change

array = [1, 2, 3, 4, 5]
array.reverse!
# in this case, the array is permanently reversed
puts array

# .uniq removes duplicate values inside the array -- removes nil values as well. 

# question mark: usually when trying to find out if something exists or not
puts array.include?(2) # true 

# Arrays: Addition and Subtraction
[1,2,3] + [3,4,5]
# [1,2,3,3,4,5]

[1,2,3] - [2]
# [1,3]

[1,nil,3,9,4,4] + [nil, nil, 2, 5,4,2,3,9]
# => [1, nil, 3, 9, 4, 4, nil, nil, 2, 5, 4, 2, 3, 9]




