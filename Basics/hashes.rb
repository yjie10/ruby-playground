# * Hash: An unordered, object-indexed collection of objects (or key-value pairs)

# Order not important
# Find items by key, not position
# Hash keys must be unique

# array
car_arr = ['Ford', 'Mustang', 'blue', 'tan']
car = {
  'brand' => 'Ford',
  'model' => 'Mustang',
  'color' => 'blue',
  'interior_color' => 'tan'
}

# some people call the arrow (=>) hash rocket

# useful methods
car.keys # returns all the keys that are in the hash
car.values # returns all the value that are in the hash

car.to_a # convert to array