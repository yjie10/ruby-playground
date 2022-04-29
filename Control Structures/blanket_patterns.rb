colors = "RRGGYYKK"
# colors = "++--**~~"
# colors = "|=|=/=/=|=|"

# output 20 rows
# On each row, shift the character to the left by removing the first character and putting it at the end

(1..20).each do
  puts colors
  colors << colors[0]
  colors = colors[1..-1]
end

# instructor solutions below
s_colors = "RRGGBBYYKK"
lines = 20

count = 0
while count < lines
  start = count.modulo(s_color.length)
  first_half = s_colors[start..-1]
  second_half = s_colors[0...start]
  puts first_half + second_half
  count += 1
end

s2_colors = "*++*~*++*"
lines = 20

s2_colors_arr = colors.split('')
1.upto(lines) do |i|
  first = s2_colors_arr.shift
  s2_colors_arr << first
  puts s2_colors_arr.join
end