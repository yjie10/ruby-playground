# Conditionals: 
# case

# case with booleans
count = 0

case
when count == 0
  puts "nobody"
when count == 1
  puts "1 person"
when (2..5).include?(count)
  puts "several people"
else
  puts "many people"
end

# case with comparisons
test_value = 0

case test_value
when 0
  puts "nobody"
when 1
  puts "1 person"
when 2..5
  puts  "several people"
else
  puts "many people"
end
