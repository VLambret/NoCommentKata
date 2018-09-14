# No Comment TDD Kata

The goal of this Kata is to realise a simple preprocessor removing C-like comment from a piece of code.

## Specification

We can find the definitions of comments in the [2012 C standard](http://www.open-std.org/JTC1/SC22/WG14/www/docs/n1570.pdf)

6.4.9 Comments

1. Except within a character constant, a string literal, or a comment, the characters /* introduce a comment. The contents of such a comment are examined only to identify multibyte characters and to find the characters */ that terminate it.
70)
2
2. Except within a character constant, a string literal, or a comment, the characters // introduce a comment that includes all multibyte characters up to, but not including, the next new-line character. The contents of such a comment are examined only to identify multibyte characters and to find the terminating new-line character.

### EXAMPLE

```C
"a//b"                   // four-character string literal
#include "//e"           // undefined behavior
// */                    // comment, not syntax error
f = g/**//h;             // equivalent to f=g/h;
//\
i();                     // part of a two-line comment
/\
/ j();                   // part of a two-line comment
#define glue(x,y) x##y
glue(/,/) k();           // syntax error, not comment
/*//*/ l();              // equivalent to l();
m = n//**/o
+p;                  // equivalent to m=n+p;
```

## How to use this Kata

1. Start with the easiest case : preprocessing a file without comment gives the exact same file
2. Identify the next feature you want to implement
3. Write the smallest C file illustrating the feature and the sample of the expected result
4. Complete the test suite by adding the test
5. Implement until all the tests pass then go back to point 2
6. You should never reach this point because previous instruction create an infinite loop

## Discussions

- How do you ordered your feature developpment ? Simplicity of implementation ? Frequency of the feature ?
- Can you understand the specifications when you read the tests ?
- Can you understand the specifications when you read the code ?
