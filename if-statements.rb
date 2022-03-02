# if-statements

isalola = false
iskalos = true

if isalola and iskalos
  puts "Bonjour Alola! "
elsif isalola and !iskalos
  puts "Alola!"
elsif iskalos and !isalola
  puts "Bonjour!"
else
  puts "Hello! "
end

# conditional w/ comparison
def max(num1, num2, num3)
  if num1 >= num2 and num1 >= num3 
    return num1
  elsif num2 >= num1 and num2 >= num3
    return num2
  else
    return num3
  end
end

puts max(6, 2, 3)