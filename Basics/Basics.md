# Objects

- Almost everything in Ruby is an object.
- Similar to physical objects.
- Objects can represent abstract ideas.
- Objects have attributes - e.g. an attribute to a book can include color, title, total pages, etc.
- Objects are instaces of a class. A class is a general type, while an object is a specific instance of that type.
- Objects have behaviors.

# Variables

- The exception in Ruby which are _NOT_ objects.
- Store a reference to an object.
- We can treat variables like objects because once a variable is assigned an object, it acts just like that object.
- _Naming Convention: lowercase with underscores (snake)._

### Variable Scope Indicators

- Global | `$variable`
- Class | `@@variable`
- Instance | `@variable`
- Local | `variable`
- Block | `variable`
  - If it's being used inside a block of code.

# Numbers

- Integers.
- Floating-point numbers ("floats").
- Both _integers_ and _floating-point numbers_ inherit from a parent called _Numeric_.So they share behaviors that are in the numeric class, but they each have their own behaviors as well.

### Integers

- Follows the standard math rules: PEMDAS.
- Integer Methods:
  - `.class:` returns the class of the object.
  - `.next:` returns the next value of the integer.
  - `.abs:` return the absolute value of the integer.

### Floats

- A number that has a decimal in it.
- Keeps the prevision and therefore `integer + float = float`.
- Float Methods:
  - `round:` follow rounding rules.
  - `floor:` would always round down.
  - `ceil:` would always round up.

### Strings

- A sequence of characters.
- Can perform `Concatenation` on strings to join them together.
- To join two strings:
  - By `+` (plus).
  - By `<<` (append) operator. Modifies the original variable.
