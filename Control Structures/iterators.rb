# Iterate: To say or do again; To apply a procedure repeatedly; To perform code on each item in a set

i = 5
i.times do
  puts "Countdown: #{i}"
  i -= 1
end

puts "Loop is done. "

# Iterators: times, upto, downto, each
5.times { puts "Hello" }
1.upto(5) { puts "Hello" }
5.downto(1) { puts "Hello" }
(1..5).each { puts "Hello" }

# Iterators: Block Variables
5.downto(1) do |i|
  puts "Countdown: #{i}"
end
puts "Loop done. "

# Iterators: By Class
# Numbers: times, upto, downto, step
# Range: each, step
# String: each_line, each_char, each_byte
# Array: each, each_index, each_with_index
# Hash: each, each_key, each_value, each_pair

# Iterators: for...in
fruits = ['banana', 'tangerine', 'lemon']

fruits.each do |fruit|
  puts fruit.capitalize
end

for fruit in fruits
  puts fruit.capitalize
end