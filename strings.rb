# working with strings and methods on strings

puts "Hello String"
puts "Use backslash to print quotation marks \"\""

phrase = "Hello String"
puts phrase

# String method / function
puts phrase.upcase()
puts phrase.downcase()

puts phrase.strip() # removes excess white space

# method that gives info
puts phrase.length()
puts phrase.include? "Hello" # true
puts phrase[0] # H

# can also print a range of chracters
puts phrase[0, 5] # start at index 0, return 5 characters including @0
puts phrase[2, 6] # start at index 2, return 6 characters including @2

puts phrase.index("e") # 1
puts phrase.reverse() # reverses the string