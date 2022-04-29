# Loops: Control Methods

# break: terminate the whole loop
# next: jump to next loop
# redo: redo this loop
# retry: start the whole loop over

i = 5
loop do 
  break if i <= 0
  puts "Countdown: #{i}"
  i -= 1
end
puts "Out of loop. "
# VERY VERY RARE, there are better ways to do loops

# Loops: while, until
bool = true
# while bool
  # ...
# end

# run until something is true
# until bool
  # ... 
# end

i = 5
while i > 0
  puts "Countdown: #{i}"
  i -= 1
end

cart = ["apple", "banana", "orange"]

until cart.empty?
  first = cart.shift
  puts first.upcase
end

puts "Cart is emptied. "
