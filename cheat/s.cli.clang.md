Compile

    gcc program.c -o program

Compiler macros

    #ifndef __cplusplus
    typedef char bool;
    #define true 1
    #define false 0
    #endif

Functions

* functions pass by value (makes a copy)
* functions also get a copy of the pointer, not a copy of the object being pointed to (pass by reference)

Function pointers

    int (* convert)(int from) = celsius_to_fahrenheit;

    # alternatively
    typedef int (* converter)(int from);
    converter convert = celsius_to_fahrenheit;
    printf(" %d\n", convert(34));

Structures

    struct color
    {
        float red;
        float green;
        float blue;
        float alpha;
    };

    color not_ok = {};
    struct color ok = {};

    # alternatively (portable with C++)
    typedef struct
    {
       float red;
       float green;
       float blue;
       float alpha;
    } color;

    color better = { };

    color c = { 1, 0, 0, 1}; # c is red
    c.green = c.red; # c is now yellow
    color colors[4]; # array of five colors
