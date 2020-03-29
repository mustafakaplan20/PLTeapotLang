# Teapot Programming Language
An advanced calculator language which takes input as strings, numbers, characters etc. to operating.

  - Group Members: Mustafa KAPLAN, Doğukan İNCE

## Features

  - Import a number/operator or both of them as string
  - It determines types and calculate the user input(Later)!

## Running the Code

Teapot has own extension ".tea" it is used for special calculator.

```sh
$   make plTeapot.l
$   ./plTeapot < Calc.tea
```

## BNF

    -   <program> : “enter” <statements> “Calculate”
    -   <statements> : <statement> | <statement> <statements>
    -   <statement> : <variable_declaration> | <expression>
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
    -   "billion"|"trillion"|"quadrillion"|"quintillion"|"sextillion"|
    -   "septillion"|"octillion"|"nonillion"|"decillion”
    -   <character> : \’[a-zA-Z]\’