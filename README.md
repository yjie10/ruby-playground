# Ruby

### print vs puts

- first introduced: puts and print;
- puts 后会空一行，print 是 inline.
- 有点像 Java 的 print 和 println;

### variables

- when creating a variable in ruby, we ...

  - give the name of the variable,
  - multiple words separated by underscore `_`, (aka snake_case)
  - what to store inside the variable.

- if we are using text + variable to display information, we need to wrap the whole statement with parantheses.
- 可以随时 update variable, just set the variable to the new value.

### Data Types

- **string:** `plain text`
- **numbers:** `including integers, floating point numbers (decimals)`
- **boolean:** `true or false`
- **nil:** `has no value`

### Strings

- to type out quotation mark, can use a backslash `\`.
- `\n` will print a new line.
- string methods (aka string functions) are methods we can call on strings to modify or give information about the string.

- some methods include ...

  - **.upcase():** `converts all characters to uppercase`
  - **.downcase():** `converts all chracters to lowercase`
  - **.strip():** `removes white spaces`

  - **.length():** `returns the length of the string`
  - **.include? "":** `returns true or false`
  - **.index():** `returns the index of the character(s)`

### Math & Numbers

- arithmetics on numbers ...

  - addition, subtraction, multiplication, division
  - **n\*\*m:** `exponents`
  - %: 老朋友了。

- in ruby, to print a number with string (two different data types in general) will need to convert the number to a string by using **.to_s**.
- and to convert to integer (say getting a user input of number), can be done by using **.to_i**, and **.to_f** for float.

- numbers methods ...

  - **.abs():** `returns absolute val`
  - **.round():** `rounds the number`
  - **.ceil() / .floor():** `returns rounding of the higher / lower number`

- can use functions from the `Math` class ...

  - **Math.sqrt(n):** `returns the square root of the number n`

- operation performed between integer and integer will return integer, between integer and float will return a float.

### User Input

- **gets:** `takes an user input (can be stored in a variable for later use)`
- whenever the user press "enter" after gets, ruby will take it as a new line.
- **.chomp()** can be used to get rid of this behavior.
- ruby automatically converts whatever the user entered into a string.

### Arrays

- can store different data types inside the array.

```
array_name = Array[element1, element2, element3 ...]
```

- can access backwards by using negative values (这点和 python 一样).
- can also decalre an array without initializing.

```
array_name = Array.new
```

- array methods 大致和 string methods 一样。
- can use **.sort()** as well.
- cannot use sort on an array that contains different data types though because ruby won't know how to compare them.

### Hashes

- Object -- key value pairs.
- aka dictionaries (和 python 一样).
- keys need to be unique.

```
hash_name = {
  key1 => value1,
  key2 => value2,
  :key3 => value3
}

hash_name[:key3] # works
hash_name[key1] # works
```

### Methods

```
def method_name

end

# with param & default param
def method_name(param1="default", param2 ...)

end
```

### Return

- like other programming languages, code after `return` statement won't get executed.
- can return multiple values (essentially like returning an array).
