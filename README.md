# Teapot Programming Language
An advanced calculator language which takes input as strings, numbers, characters etc. to operating basic and some functional mathematical usage.

  - Group Members: Mustafa KAPLAN, Doğukan İNCE

## Features
  - Import a number/operator or both of them as string or number.
  - It determines types and calculate it!
  - Teapot is a little bit strange & unordinary.

## Running the Code

Teapot has own extension ".tea" it is used for special calculator.
In UNIX just type below command. If the user want to terminate "out" command or ";" is enough.

```sh
$   make
$   ./plTeapot.tea < Input.txt
$ /* Terminating the program -> out or ; */
$   out
```

## BNF

    -   <program> : <statements> 
    -    <statement> : <expression>
    -    <expression> : <expression> OPERATOR <expression>
    -   <variable_declaration> : <type> <identifier> <equals> [<expression> | “null”]
    -   <type> : “String” | “Integer” | “Operator”
    -   <identifier> : [0-9]+[0-9]*
    -   <equals> : “=” | “equals”
    -   <expression> : [ <numeric_expression> | <string_expression> | <literal_expression> | <identifier> ]
    -   <numeric_expression> : <expression> “+” | “-” | “*” | “/” <expression>
    -   <string_expression> : <expression> “plus” | “minus” | “multiply” | “divide” <expression>
    -   <literal_expression> : <integer_literal> | <string> | <character>
    -   <integer_literal> : [1-9][0-9]*
    -   <string>: "zero"|"one"|"two"|"three"|"four"|"five"|
    -   "six"|"seven"|"eight"|"nine"|"ten"|"eleven"|
    -   "tewelve"|"thirteen"|"fourteen"|"fifteen"|"sixteen"|"seventeen"|
    -   "eighteen"|"nineteen"|"twenty"|"thirty"|"forty"|"fifty"|
    -   "sixty"|"seventy"|"eighty"|"ninety"|"thousand"|"million"|
    -   "billion"
    -   <character> : \’[a-zA-Z]\’