# loops

# while loops
index = 1
while index <= 5 
  puts index
  index += 1
end

# for loops
colors = ["green", "blue", "pink", "orange", "yellow"] # so it seems can decalre without the Array keyword

for color in colors
  puts color
end

colors.each do |color|
  puts color
end
