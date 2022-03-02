# methods

def greeting
  puts "Hello User"
end

# calling the method
greeting

def greeting_with_name(name)
  puts "Hello " + name + "!"
end

name = gets.chomp()
greeting_with_name(name)