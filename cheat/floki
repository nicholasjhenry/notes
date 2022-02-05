https://github.com/philss/floki#supported-selectors

|        Pattern        |                                                        Description                                                        |
| --------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| *                     | any element                                                                                                               |
| E                     | an element of type `E`                                                                                                    |
| E[foo]                | an `E` element with a "foo" attribute                                                                                     |
| E[foo="bar"]          | an E element whose "foo" attribute value is exactly equal to "bar"                                                        |
| E[foo~="bar"]         | an E element whose "foo" attribute value is a list of whitespace-separated values, one of which is exactly equal to "bar" |
| E[foo^="bar"]         | an E element whose "foo" attribute value begins exactly with the string "bar"                                             |
| E[foo$="bar"]         | an E element whose "foo" attribute value ends exactly with the string "bar"                                               |
| E[foo*="bar"]         | an E element whose "foo" attribute value contains the substring "bar"                                                     |
| E[foo\| ="en"]        | an E element whose "foo" attribute has a hyphen-separated list of values beginning (from the left) with "en"              |
| E:nth-child(n)        | an E element, the n-th child of its parent                                                                                |
| E:nth-last-child(n)   | an E element, the n-th child of its parent, counting from bottom to up                                                    |
| E:first-child         | an E element, first child of its parent                                                                                   |
| E:last-child          | an E element, last child of its parent                                                                                    |
| E:nth-of-type(n)      | an E element, the n-th child of its type among its siblings                                                               |
| E:nth-last-of-type(n) | an E element, the n-th child of its type among its siblings, counting from bottom to up                                   |
| E:first-of-type       | an E element, first child of its type among its siblings                                                                  |
| E:last-of-type        | an E element, last child of its type among its siblings                                                                   |
| E:checked             | An E element (checkbox, radio, or option) that is checked                                                                 |
| E:disabled            | An E element (button, input, select, textarea, or option) that is disabled                                                |
| E.warning             | an E element whose class is "warning"                                                                                     |
| E#myid                | an E element with ID equal to "myid" (for ids containing periods, use `#my\\.id` or `[id="my.id"]`)                       |
| E:not(s)              | an E element that does not match simple selector s                                                                        |
| :root                 | the root node or nodes (in case of fragments) of the document. Most of the times this is the `html` tag                   |
| E F                   | an F element descendant of an E element                                                                                   |
| E > F                 | an F element child of an E element                                                                                        |
| E + F                 | an F element immediately preceded by an E element                                                                         |
| E ~ F                 | an F element preceded by an E element                                                                                     |

There are also some selectors based on non-standard specifications. They are:

| Pattern              | Description                                         |
|----------------------|-----------------------------------------------------|
| E:fl-contains('foo') | an E element that contains "foo" inside a text node |

