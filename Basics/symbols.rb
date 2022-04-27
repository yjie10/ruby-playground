# Symbols

# ! Like strings but cannot be edited
# Begin with a colon
# Not delimited by quotes
# Lowercase, underscore, no spaces

# variable like, but no values can be assigned as it's not a variable
:first_name

# we use it like a lable, very common in hashes

person = {
  :first_name => "First",
  :last_name => "Last"
}

# we'd like to use Symbols over strings for hashes for the following reasons: 
# ! Symbols aren't editable, won't have to worry keys will be changed due to some unexpected behavior
# Symbols allows Ruby to better manage the computer memory that it uses. 

"test".object_id
# => 240
"test".object_id
# => 260
:test.object_id
# => 378268
:test.object_id
# => 378268

# symbols and strings as key in a hash cannot be used interchangably; they are different objects.
# ! "in Ruby on Rails, there's a special mechanism that does allow you to refer to values with either a symbol or a string, but that's a special feature on Ruby on Rails, it's not built into the core of Ruby. "

# Hash Symbol Shorthand
# old way
scores = {
  :low => 2,
  :high => 8,
  :avg => 6
}

# shorthand, JSON like
scores = {
  low: 2,
  high: 8, 
  avg: 6
}

scores.keys.first.class
# Symbol

# Key os __always__ a symbol in shorthand
# Cannot use integers as keys
# :100 is not a valid symbol name











