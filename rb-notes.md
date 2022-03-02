# Ruby

### print vs puts

- first introduced: puts and print;
- puts 后会空一行，print 是 inline.
- 有点像 Java 的 print 和 println;

### variables

- when creating a variable in ruby, we ...

  - give the name of the variable,
  - multiple words separated by underscore `_`,
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
