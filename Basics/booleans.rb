# * Boolean: An object that is either true or false. 

# use them for comparisons and logical expressions
# for methods with question mark (?) such as .empty? .include?, it will return a boolean. 

# ? Something New Down Here
# Triple Equals Operator (More Than Equality)

# in a case statement
case "bacon"
when String
  puts "It's a string!"
when Integer
  puts "It's an integer"
end

# ruby is calling === method here on the class. 
String === "bacon"

# * The Safe Navigator Operator (&.)
# introduced in Ruby 2.3, only calls a method on the object if the object is not nil. 

# example
if user && user.active
  # ...
end

# with safe navigator operator
if user&.active
  # ...
end