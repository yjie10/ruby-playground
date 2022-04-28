# Conditionals:
# Unless

# The opposite of if, the negation of the boolean. 
# Code is executed unless a condition is met. 

condition = "some condition"

unless condition
  # ...
end

# above same as below
if !condition
  # ...
end

cart = ['apple', 'banana', 'carrot']

unless cart.empty?
  puts "The first item is #{cart[0]}. "
else
  puts "The car is empty. "
end