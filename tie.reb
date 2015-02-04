Rebol [
    title: "Tie module - joins block of values together into a string"
    type: module
    name: tie
    file: %tie.reb
    author: "Barry Walsh (draegtun)"
    date: 4-Feb-2015
    version: 0.2.0
    history: [
        0.1.0   [19-Dec-2014 "Put into module and placed on Github" "draegtun"]
        0.2.0   [4-Feb-2015  "Added (simple) examples/tests"]
    ]
    license: {Artistic 2.0 http://opensource.org/licenses/Artistic-2.0}
    exports: [tie]
]

tie: function [
    "Tie block of values together into one long string!"
    block [block!] "Values to reduce and tie together"

    /with "tie values together with..." 
        knot [string! char!] 

    /allow-none-as "Don't suppress NONE. Instead replace with..." 
        surrogate [string! char!]
  ][
    ; reduce block.  Return empty string if empty?
    if empty? block: reduce block [return make string! 0]

    ; trim NONE!
    unless allow-none-as [trim block]

    ; tie string
    if with [
        block: next block
        forskip block 2 [insert block knot]
        block: head block
    ]

    ; replace NONEs?
    if allow-none-as [replace/all block #[none] surrogate]

    ; stringify block
    to-string block
]
