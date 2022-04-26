# Strings: Concatenat ion

greeting = "Hello"

target = 'World'

# "Hello World" 
greeting + ' ' + target

# append operator
greeting = "Hello"
greeting << " "
greeting << "world"

puts greeting

# Strings: Multiplication
"Yada " * 3
# "Yada Yada Yada "

1 * 3
# 3

"1" * 3
# "111"

# * in JS, the above code ("1" * 3) will result in 3 due to the type coercion. 

# to convert string to integer, do the following: 
"4213".to_i

# to convert integer to string, do the following:
4213.to_s

# * Strings: Escaping

# backslash '\'
'Let\'s escape!'

# * Strings: Control Characters
# \t = tab
# \n = new line

# ! It ONLY works with double quoted strings. 
puts "\ta\tb\nc\n\td" # works
puts '\ta\tb\nc\td' # does not work

# * Strings: Interpolation
# interpolation: inserting something of a different nature
# ! It ONLY works with double quoted strings.
message = 'Hello World'
puts "Message: #{message}!"
single_quotes = 'single quotes'
puts 'String interpolation does not work with #{single_quotes}?'

# can also evaluate code
puts "1 + 1 is #{1 + 1}." # 2





















