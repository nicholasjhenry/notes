https://elixirschool.com/en/lessons/basics/strings/

Elixir strings are nothing but a sequence of bytes:

    string = <<104,101,108,108,111>> # each element is a byte
    #=> "hello"
    string <> <<0>>
    #=> <<104, 101, 108, 108, 111, 0>>

https://alanstorm.com/unicode-vs-utf-8/

* Unicode: a character-set maps every possible human character and assign it a number, a code point.
* UTF-8: encoding of Unicode in 1 (ascii) - 4 (emojis) bytes

Difference:

* charlist: each value is the Unicode codepoint of a character represented by an integer
  NOTE: https://elixirforum.com/t/why-are-charlist-and-string-co-existing-in-erlang/31566/2
  > common in functional languages way back when to use lists of characters as strings
* binary: each value is the UTF-8 codepoint of a character

    'hełło'
    #=> [104, 101, 322, 322, 111]
    "hełło" <> <<0>>
    #=> <<104, 101, 197, 130, 197, 130, 111, 0>>

322 is the Unicode codepoint for ł but it is encoded in UTF-8 as the two bytes 197, 130.

    iex> ?ł
    #=> 322

    "\u0142"
    #=> "ł"

    0x0142
    #=> 322

    Integer.to_string(?ł, 16) |> String.pad_leading(4, "0")
    #=> "0142"

    0x0142 = 322 = ?ł

    <<197, 130>>
    #=> "ł"

Pattern match:

    <<foo::utf8, rest::binary >> = "hello"

Examples:

     <<_first::binary-1, mid::binary-size(byte_size(string) - 2), _last::binary-1>> = "hello"
     mid #=> "ello"

