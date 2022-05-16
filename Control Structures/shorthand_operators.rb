# Conditionals: Ternary Operator
# useful for simple conditionals, making it simple and short

puts count == 1 ? "person" : "people"

# same as
if  count == 1
  puts "person"
else
  puts "people"
end

# Conditionals: Or Operator
# great for setting default values

x = y || z

# same as
if y
  x = y
else
  x = z
end

# Conditionals: Or-Equals Operator
x ||= y

# if x has a value, use it
# but if x doesn't have a value, set it to y

# same as
unless x
  x = y
end

# Conditionals: Statement Modifiers

x = y unless x
puts "Hello" if greeting_enabled


score += 10 unless score >= MAX_SCORE
# the line that comes before it, gets the modifier at the end
# you only want to have this kind of modifier when you have a _single_ line

count = 2

puts count == 1 ? "#{count} person" ? "#{count} people"

DEFAULT_LIMIT = 100
limit = nil

max = limit || DEFAULT_LIMIT

puts max
# 100

limit ||= DEFAULT_LIMIT

puts limit

limit = DEFAULT_LIMIT unless limit

puts "Are you lonely?" if count == 1